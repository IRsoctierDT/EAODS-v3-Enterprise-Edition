# Security Policy

## Scope

EAODS Enterprise Edition is a governed documentation and architecture system;
there is no production application runtime in this repository. The security
surface is the CI/CD pipeline (GitHub Actions workflows and the CI validators
under `scripts/`), the documentation build toolchain (`requirements-docs.txt`),
and the published GitHub Pages site.

Code under `history/original-sources/` is frozen archival evidence of recovered
historical artifacts with registered SHA-256 checksums. It is never executed,
installed, or deployed, and corpus governance prohibits modifying it.

## Reporting a vulnerability

Do not disclose vulnerabilities through public issues, discussions, or pull
requests.

Report vulnerabilities privately through GitHub private vulnerability
reporting:
<https://github.com/IRsoctierDT/EAODS-v3-Enterprise-Edition/security/advisories/new>

You can expect an acknowledgement within 7 days. Confirmed vulnerabilities are
fixed or receive a documented risk decision within 90 days, and reporters are
credited in the advisory unless they ask otherwise.

## Supported versions

The `main` branch and the latest tagged release receive security fixes.
Earlier tags are historical records and are not patched.

## Rules for contributors

Never commit passwords, tokens, private keys, certificates, customer data,
regulated data, sensitive incident evidence, or unredacted infrastructure
details that create material risk. CI fails the build if secret-like files are
present.
