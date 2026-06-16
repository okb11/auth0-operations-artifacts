# Auth0 Operations Artifacts

This repository contains reusable internal Auth0 operations artifacts for delivery, support, migration, tenant review, and managed services work.

## Artifact Library

| Folder | Artifact | Purpose |
|---|---|---|
| 01-bulk-user-import | Bulk User Import | Import users into Auth0 database connections |
| 02-tenant-backup-deploy-cli | Tenant Backup / Deploy CLI | Export, review, and restore Auth0 tenant configuration |
| 03-application-onboarding | Application Onboarding | Standardize new Auth0 app onboarding |
| 04-mfa-reset-troubleshooting | MFA Reset and Troubleshooting | Support MFA reset and MFA issue triage |
| 05-tenant-security-baseline | Tenant Security Baseline | Review Auth0 tenant security posture |

## Rules

- Do not commit real client secrets.
- Do not commit real Management API tokens.
- Do not commit production user exports.
- Do not commit client PII unless explicitly approved.
- Use placeholders in scripts.
- Use pull requests for changes.
- Store evidence screenshots only when approved for internal use.

## Naming Standard

Use this format for files:

```text
artifact-name-runbook.md
artifact-name-checklist.md
artifact-name-template.md
