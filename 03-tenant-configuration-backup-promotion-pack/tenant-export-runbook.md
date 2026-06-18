# Tenant Export Runbook

## Purpose

This runbook explains how to export the current Auth0 tenant configuration into source control or an approved backup location.

Use this before:

- Making tenant changes
- Promoting configuration
- Reviewing current tenant state
- Preparing rollback evidence
- Comparing expected configuration against actual tenant configuration

## Important Warning

Tenant export is for Auth0 configuration.

It does not export user passwords.

Do not use this runbook to collect or store user passwords, Management API tokens, or client secrets.

## Step 1: Confirm Export Scope

Document:

- Tenant name
- Environment
- Export reason
- Requested by
- Operator
- Date and time
- Change request ID, if applicable

Example:

```text
Tenant:
company-dev.us.auth0.com

Environment:
Development

Export Reason:
Pre-change backup before promoting Universal Login branding update

Operator:
IAM Analyst

Date:
YYYY-MM-DD
```

## Step 2: Confirm Credentials

Confirm the Deploy CLI credentials are available through an approved method.

Examples:

- Local ignored config file
- Environment variables
- CI/CD secrets
- Password vault reference

Do not paste real secrets into the repository.

## Step 3: Create Export Folder

Use this naming format:

```text
exports/<environment>/<YYYY-MM-DD>-<short-description>
```

Example:

```text
exports/dev/2026-06-17-pre-branding-change
```

## Step 4: Run Export

Example command using a config file:

```bash
a0deploy export -c=config-dev.json --format=directory --output_folder=exports/dev/2026-06-17-pre-change
```

Example command using environment variables:

```bash
a0deploy export --format=directory --output_folder=exports/dev/2026-06-17-pre-change
```

## Step 5: Review Export Output

Check that expected resources exported successfully.

Review for:

- Applications / clients
- Connections
- APIs / resource servers
- Actions
- Roles
- Branding
- Prompts
- Email templates
- Organizations
- Log streams
- Tenant settings

## Step 6: Check for Sensitive Values

Before committing exported files, review for sensitive values.

Do not commit:

- Client secrets
- Management API tokens
- Private keys
- Passwords
- Production credentials
- Sensitive user data

## Step 7: Commit Approved Export

If the export is approved for source control, commit the export.

Suggested commit message:

```text
Export Auth0 dev tenant configuration
```

## Step 8: Capture Evidence

Document:

- Export command used
- Export folder path
- Timestamp
- Operator
- Tenant name
- Review result
- Any export errors

## Completion Criteria

The tenant export is complete when:

- Export ran successfully
- Output was reviewed
- Sensitive data check was completed
- Export was stored in the approved location
- Evidence was captured
