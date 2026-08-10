# Changelog

## [Unreleased]

### Added

- OpenSSF Best Practices passing-level self-assessment (67 criteria: 51 met,
  13 not applicable, 3 pending the licensing decision) published as a
  governance document, ready for transcription into a bestpractices.dev badge
  entry.
- Canonical quality-gate runner `scripts/run_checks.sh` mirroring the required
  `validate` CI check; CONTRIBUTING.md (root and portal) expanded with the
  quality gates and the validator-extension policy, which the pull-request
  template now enforces as a QA checklist item.
- The release workflow publishes the curated CHANGELOG section as the release
  body (and fails if a release has no CHANGELOG section); README gains
  feedback/contributing and private-security-reporting pointers; the issue
  template's security contact now uses the canonical post-rename repository
  URL.

### Security

- OpenSSF Scorecard remediation: every GitHub Action across the five workflows
  is pinned to a full commit SHA, the deprecated CodeQL Action v3 is upgraded
  to v4, and `release.yml` scopes `contents: write` to the release job instead
  of granting it workflow-wide.
- The documentation toolchain is hash-locked: `requirements-docs.txt` is now
  compiled from `requirements-docs.in` with `--generate-hashes`, CI installs
  with `--require-hashes`, and the resolved `pymdown-extensions` 11.0.1 clears
  GHSA-9xwg-3r6f-jcx2.
- `SECURITY.md` now documents the private vulnerability reporting channel,
  response expectations, supported versions, and scope.
- CodeQL no longer analyzes `history/original-sources/` — frozen archival
  evidence that corpus governance prohibits modifying, so findings there were
  unactionable.

## [1.0.0] - 2026-08-03

First general-availability release of EAODS Enterprise Edition as a complete
Enterprise Reference Operating Model: the historical corpus recovered and
governed, the twelve-volume v17.3 framework published, and the enterprise
architecture, cybersecurity, governance, operations, documentation, and
reference-implementation layers authored on top of it.

### Historical migration — complete

- All 18 corpus exceptions closed. Every version line from v3.1 through v17.3,
  plus the v8.6/v8.7 AI Operator Suite standards, has recovered bodies on the
  register with SHA-256 integrity and provenance.
- 105 recovery units registered across EAODS-HIST-ENT/PKG/V46/AIO/V173/GAP/
  CORPUS-001, each independently verified for completeness and contamination
  before acceptance.
- v17.3 Volumes 1-12 published in `docs/frameworks/EAODS-v17.3/`.

### Added

- Enterprise Architecture Framework (epic #24): architecture principles, enterprise reference architecture, business architecture, capability model, value streams, solution architecture templates, and the architecture governance model.
- Cybersecurity Domain 03 expansion (epic #25): Zero Trust architecture, identity/access/secrets management, secure development lifecycle, software supply chain security, AI risk management, the MITRE ATT&CK mapping standard, and the threat-model library register.
- Governance Modernization (epic #26): governance manual, Change Advisory Board and change governance, risk management and register, exception management, standards lifecycle, and the decision register with RACI matrices.
- Platform Engineering & Operations (epic #27): EPOC framework, incident command model, observability and monitoring standards, SRE guidance with service levels, and operational dashboard specifications.
- GitHub enterprise automation (epic #28): CodeQL analysis, OpenSSF Scorecard, SPDX SBOM generation per release, and internal link/navigation validation enforced in CI.
- Documentation Excellence (epic #29): documentation standards and style guide, documentation QA framework, and document templates.
- Public site improvements (epic #30): canonical repository URL and site URL, accessibility statement with measured audit results, releases and version-navigation guidance, and a per-release PDF library of the v17.3 framework volumes.
- Reference Implementations (epic #31): implementation guide, two illustrative case studies (governed AI agent operations; Domain 03 detection and response), and reusable record templates.
- v1.0.0 release readiness and security review record (EAODS-GOV-REL-001).

### Changed

- Third-party GitHub Actions pinned to commit SHAs, bringing the repository into line with the software supply chain security standard it publishes.
- STD-0001: the THR/RUN/PAT prefix reservation note corrected — those libraries are established, the prefixes are registered, and the registry is authoritative.

### Previously recorded

- Production repository scaffold.
- Governance and security documentation.
- MkDocs documentation portal configuration.
- Domain 03 v17.3 security engineering reference volume.
- Domain 03 v17.3 Volume 10 — Enterprise Platform Operations Center, SRE, and operational engineering reference.
- Domain 03 v17.3 Volume 11 — Enterprise Reference Control Catalog, engineering standards, and architecture compliance framework.
- STD-0001 canonical terminology and object identifier standard with machine-readable registries under standards/vocabulary/.
- Architecture pattern library (PAT-0001 through PAT-0004) extracted from framework volumes 8-11.
- Operational runbook library (RUN-0001 through RUN-0003) operationalizing volumes 9-11.
- Threat-model library (THR-0001 through THR-0003) covering identity, LLM injection, and evidence-integrity boundaries.
- STD-0002 cross-artifact traceability standard with machine-readable knowledge graph (standards/graph/) and CI-enforced validation.
- Reference implementation index linking the IANUA Agent Trust Broker as the realization of PAT-0001 and EAODS-CTRL-000184.
- Unified Historical Corpus (1.0.0-reconstructed) under docs/history/ — migration-control baseline with source inventory, provenance ledger, exception queue, and Volume 10 north-star charter.
- Documentation quality workflow.
- Agent operating manual (AGENTS.md, vendor-neutral) with CLAUDE.md importing it — repository policy for autonomous AI increments, quality gates, and human approval boundaries.
- v4.6 Executive Control Tower reconstruction accepted and published (EAODS-HIST-V46-001); EXC-009 closed. Owner acceptance of the recovered Orchestrator Handbook recorded; EXC-008 closed.
- Complete v4.6 Executive Control Tower transmission and the "EAODS V3 Continuation" shared-conversation provenance record registered as corpus evidence (SRC-026 upgraded, SRC-027 added).
- Recovered EAODS v3.2 Enhanced Operator Edition and v4.0-4.5 runtime packages registered under history/ with SHA-256 manifest (EAODS-HIST-PKG-001); EXC-007 closed (v3.2.0-alpha recovered; no Git tag ever existed), EXC-009 advanced with registered conversation evidence.
- Recovered 29-file EAODS v3 Enterprise Edition source corpus registered under history/ with SHA-256 integrity manifest (EAODS-HIST-ENT-001); exceptions EXC-005 and EXC-006 closed, EXC-008 advanced to pending-review; committed source-archive package evidence referenced by the reconciliation record.
- Recovered Enterprise AI Operator Documentation Suite transmissions (36 standards, v4.17.1-alpha through v8.3-alpha) registered under history/ with per-unit SHA-256 manifest (EAODS-HIST-AIO-001); new exceptions EXC-014 through EXC-017 opened for versions referenced but not recovered (v4.12/v4.15/v4.16/v4.17, v6.7, v8.2, v8.4/v8.5).

### Fixed

- Documentation workflows check out full Git history (`fetch-depth: 0`) so the portal's git-revision "last updated" dates reflect real file history instead of the shallow-checkout commit date.
