# Emergency Restore Runbook

## Purpose

This runbook explains how to restore a previous known-good Auth0 tenant configuration after a failed promotion or production-impacting configuration change.

Use this only when a rollback or emergency restore has been approved.

## Emergency Examples

Use this runbook when:

- Login is broken after a tenant configuration change
- Logout is broken after a promotion
- An Action causes unexpected login failures
- A connection was changed incorrectly
- Callback URLs were overwritten
- Branding or prompts were promoted incorrectly
- Production settings need to be restored quickly

## Step 1: Confirm Emergency Scope

Document:

- Incident or change ID
- Impacted tenant
- Impacted applications
- Impacted user population
- Time issue started
- Last known-good backup
- Restore approver
- Restore operator

## Step 2: Stop Additional Changes

Before restore:

- Pause additional promotions
- Notify IAM/security team
- Notify application owner
- Confirm no one else is making dashboard changes
- Preserve logs and command output

## Step 3: Locate Last Known-Good Export

Find the latest approved backup created before the issue.

Example:

```text
exports/prod/2026-06-17-pre-promotion
```

Confirm:

- Backup is from the correct tenant
- Backup was taken before the failed change
- Backup does not contain secrets that should not be imported
- Backup is approved for restore

## Step 4: Review Restore Impact

Before importing the backup, confirm what the restore may change.

Review:

- Applications / clients
- Callback URLs
- Connections
- Actions
- APIs / resource servers
- Roles
- Branding
- Prompts
- Email templates
- Tenant settings

## Step 5: Restore Configuration

Run the restore import against the impacted tenant.

Example:

```bash
a0deploy import -c=config-prod.json --input_file=exports/prod/2026-06-17-pre-promotion
```

Confirm the command is pointed at the correct tenant before running it.

## Step 6: Review Restore Output

Review command output.

Document:

- Successful resources
- Failed resources
- Warnings
- Skipped resources
- Resources needing manual review

Do not ignore failures.

## Step 7: Validate Recovery

After restore, test:

- Login
- Logout
- Callback redirect
- Application access
- Connection behavior
- Action behavior
- MFA behavior if applicable
- Email behavior if applicable

## Step 8: Notify Stakeholders

Notify:

- Application owner
- IAM reviewer
- Security team
- Change owner
- Support team

Include:

- What was restored
- When restore completed
- Validation result
- Any remaining issues

## Step 9: Capture Evidence

Capture:

- Restore command timestamp
- Backup folder used
- Operator
- Approver
- Validation notes
- Issues found
- Follow-up actions

Do not capture secrets, passwords, or private tokens.

## Step 10: Post-Incident Review

After recovery, document:

- Root cause
- Failed change
- Detection method
- Restore timing
- Gaps in review
- Prevention steps
- Follow-up tasks

## Completion Criteria

Emergency restore is complete when:

- Known-good configuration was restored
- Login and logout were validated
- Stakeholders were notified
- Evidence was captured
- Follow-up review was created
