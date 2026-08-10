#!/usr/bin/env bash
# Canonical quality-gate runner: the same gates as the required CI `validate`
# check (.github/workflows/docs-quality.yml). Run from the repository root.
# PYTHON/MKDOCS may be overridden for environments without the local .venv.
set -euo pipefail

PYTHON="${PYTHON:-.venv/bin/python}"
MKDOCS="${MKDOCS:-.venv/bin/mkdocs}"

"$MKDOCS" build --strict
"$PYTHON" scripts/validate_front_matter.py
"$PYTHON" scripts/validate_traceability.py
"$PYTHON" scripts/validate_links.py

# .venv and site are local-only (absent in CI checkouts) and legitimately
# contain vendored .pem CA bundles.
if find . \( -path ./.git -o -path ./.venv -o -path ./site \) -prune -o -type f \( -name '.env' -o -name '*.pem' -o -name '*.key' -o -name '*.p12' -o -name '*.pfx' \) -print | grep -q .; then
  echo "Prohibited secret-like file detected." >&2
  exit 1
fi

echo "All quality gates passed."
