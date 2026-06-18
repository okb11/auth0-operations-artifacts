# Tenant Configuration Backup and Promotion Pack

## Purpose

This pack helps turn Auth0 configuration into repeatable delivery work instead of manual dashboard clicking.

It provides a structured way to export tenant configuration, review changes, promote approved configuration between environments, detect drift, and restore a previous known-good configuration if something goes wrong.

## Why This Matters

Auth0 tenant changes are often made manually in the dashboard. That can create problems because manual changes are hard to track, hard to review, and hard to repeat across dev, test, and production tenants.

This pack helps teams:

- Back up Auth0 tenant configuration
- Store approved configuration in source control
- Promote configuration from dev to test to production
- Review what changed before promotion
- Detect configuration drift
- Restore a previous known-good configuration
- Create evidence for change control

## Tooling Foundation

This pack is based on the Auth0 Deploy CLI.

The Auth0 Deploy CLI is used to manage Auth0 tenant configuration, including resources such as:

- Actions
- Applications / clients
- Connections
- APIs / resource servers
- Roles
- Branding
- Prompts
- Email templates
- Organizations
- Log streams
- Tenant settings

## Artifacts Included

| Artifact | Purpose |
|---|---|
| auth0-deploy-cli-setup-guide.md | Standard setup for dev, test, and prod tenants |
| tenant-export-runbook.md | Pulls current tenant config into source control |
| tenant-promotion-runbook.md | Moves approved config from lower tenant to higher tenant |
| environment-variable-template.md | Stores tenant domain, client ID, and client secret references |
| git-repo-structure-template.md | Organizes Auth0 config by environment |
| change-review-checklist.md | Confirms what changed before promotion |
| emergency-restore-runbook.md | Restores previous known-good tenant configuration |
| configuration-drift-report-template.md | Compares expected config vs actual tenant config |

## Recommended Environment Flow

```text
Development tenant
↓
Test / staging tenant
↓
Production tenant
```

## Important Safety Rules

- Do not commit Auth0 client secrets.
- Do not commit Management API tokens.
- Do not commit private keys.
- Do not commit passwords.
- Do not commit production credentials.
- Do not promote directly to production without review.
- Always export a backup before making production changes.
- Always validate changes in a lower environment first.
- Always document who approved the change.

## Status

Draft / Ready for Review
