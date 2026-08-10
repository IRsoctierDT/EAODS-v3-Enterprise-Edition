# Enterprise AI Operator Documentation Suite (EAODS) v3

EAODS is an enterprise architecture, governance, cybersecurity, and operationalization framework for governed AI-assisted organizations.

## Current release line

- **EAODS v17.0** — Enterprise Cyber Defense & Digital Resilience Framework
- **EAODS v17.1** — Domain 03 Reference Architecture and Implementation Blueprint
- **EAODS v17.2** — Domain 03 Operations Manual and Executive Playbook
- **EAODS v17.3** — Domain 03 Reference Implementation and Platform Engineering Guide

## Repository structure

```text
docs/                 Documentation portal
frameworks/           Versioned EAODS volumes
standards/            Schemas, metadata, templates, vocabulary
architecture/         ADRs and reference diagrams
.github/workflows/    Quality and publishing automation
```

## Local documentation

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements-docs.txt
mkdocs serve
```

## Governance

All framework documents require YAML front matter, traceability, QA checks, integration points, and a human review gate.

## Feedback and contributing

- Report problems or propose enhancements via [GitHub issues](https://github.com/IRsoctierDT/EAODS-v3-Enterprise-Edition/issues).
- The contribution process and quality gates are documented in [CONTRIBUTING.md](CONTRIBUTING.md).

## Security

Never commit secrets, credentials, regulated data, customer data, or sensitive incident evidence.

Report vulnerabilities privately per [SECURITY.md](SECURITY.md) — never in a public issue.
