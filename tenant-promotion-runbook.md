# Tenant Promotion Runbook

## Purpose

This runbook explains how to promote approved Auth0 tenant configuration from a lower environment to a higher environment.

Recommended promotion path:

```text
Development → Test / Staging → Production
```

## Important Warning

Promotion can change tenant behavior.

Do not promote directly to production without review, approval, backup, and rollback planning.

## Step 1: Confirm Promotion Request

Document:

- Source tenant
- Target tenant
- Environment path
- Requested change
- Request owner
- IAM reviewer
- Security reviewer, if required
- Change request ID
- Planned promotion time
- Rollback plan

Example:

```text
Source Tenant:
company-test.us.auth0.com

Target Tenant:
company-prod.us.auth0.com

Change:
Promote updated application callback URLs and Universal Login branding

Change Request:
CHG-000123
```

## Step 2: Export Target Tenant Before Promotion

Before changing the target tenant, export the current target tenant configuration.

Example:

```bash
a0deploy export -c=config-prod.json --format=directory --output_folder=exports/prod/2026-06-17-pre-promotion
```

This backup may be needed for rollback.

## Step 3: Confirm Approved Promotion Package

Confirm the package being promoted includes only approved changes.

Review:

- Applications / clients
- Callback URLs
- Logout URLs
- Web origins
- Connections
- Actions
- APIs / resource servers
- Roles
- Branding
- Prompts
- Email templates
- Tenant settings

Remove unrelated changes before promotion.

## Step 4: Review Environment-Specific Values

Before promotion, confirm environment-specific values are correct.

Examples:

- Dev URLs are not promoted to production
- Localhost URLs are not present in production
- Test client IDs are not used in production
- Production callback URLs are exact
- Production branding is approved
- Production connections are correct

## Step 5: Run Promotion Import

Example import command:

```bash
a0deploy import -c=config-prod.json --input_file=promotion-packages/prod-approved
```

Only run this after approval.

## Step 6: Review Import Output

Check the command output carefully.

Document:

- Successful resources
- Failed resources
- Warnings
- Skipped resources
- Unexpected changes

Do not ignore failed resources.

## Step 7: Validate Target Tenant

After promotion, validate:

- Login works
- Logout works
- Callback URLs work
- Web origins work
- Connections are enabled correctly
- Actions execute as expected
- Branding appears correctly
- Email templates behave correctly
- MFA behavior is expected
- Logs show expected activity

## Step 8: Capture Evidence

Capture:

- Pre-promotion export location
- Promotion package path
- Import command output
- Successful login screenshot
- Successful logout screenshot
- Owner approval
- IAM reviewer approval
- Validation notes

Do not capture secrets or sensitive user data.

## Step 9: Close the Change

Close the promotion only after:

- Target tenant validates successfully
- Owner approves outcome
- Issues are documented
- Rollback is not required
- Evidence is stored

## Completion Criteria

Promotion is complete when:

- Target tenant was backed up
- Approved package was promoted
- Validation passed
- Evidence was captured
- Change owner approved closure
