# Bulk User Import Artifact

## Purpose

This artifact provides a reusable process for importing users into an Auth0 database connection.

## Contents

| File | Purpose |
|---|---|
| bulk-user-import-runbook.md | Full step-by-step runbook |
| bulk-user-import-checklist.md | Quick execution checklist |
| sample-auth0-users.json | Sample Auth0 import file |
| pre-import-validation-script.py | Pre-import validation script |
| create-import-job.sh | Example import job script |
| check-import-job-status.sh | Example job status script |
| evidence/README.md | Evidence collection guidance |

## When to Use

Use this artifact for:

- Auth0 user migration
- Test imports
- Production bulk imports
- User import reconciliation
- Migration planning

## Important Rules

- Never commit real Management API tokens.
- Never commit production user exports.
- Never commit client PII without approval.
- Always test with a small sample import first.
- Always capture the import job ID.
- Always reconcile source count against imported count.
