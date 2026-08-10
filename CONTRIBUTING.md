# Contributing to EAODS

## Feedback and problems

Report problems and propose enhancements through
[GitHub issues](https://github.com/IRsoctierDT/EAODS-v3-Enterprise-Edition/issues).
Report vulnerabilities privately per [SECURITY.md](SECURITY.md) — never in a
public issue.

## Branches

Use short-lived branches:

- `docs/<topic>`
- `feature/<capability>`
- `fix/<issue>`
- `chore/<maintenance>`

## Pull requests

Pull requests must explain business and architecture impact, identify affected
EAODS volumes, pass documentation validation, preserve YAML front matter, and
exclude secrets.

## Commit convention

Use Conventional Commits (`docs:`, `feat:`, `fix:`, `chore:`), scoped where
useful, e.g. `docs(history): …`, `docs(governance): …`.

## Quality gates

Every change must pass the automated quality gates locally before the pull
request is opened, and again in CI as the required `validate` status check:

```bash
./scripts/run_checks.sh
```

The runner executes the same gates as CI:

- `mkdocs build --strict` — full portal build with every warning treated as an
  error
- `scripts/validate_front_matter.py` — required front-matter fields on
  framework volumes
- `scripts/validate_traceability.py` — identifier and knowledge-graph
  traceability against the STD-0001 and STD-0002 registries
- `scripts/validate_links.py` — internal link and navigation resolution
- the prohibited secret-like file check

## Extending the validators

When a change introduces new document types, identifiers, or structural rules,
extend the CI validators under `scripts/` to cover them in the same pull
request. New identifier prefixes must be registered in
`standards/vocabulary/` (STD-0001) before use.
