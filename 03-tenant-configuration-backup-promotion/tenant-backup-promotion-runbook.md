# Tenant Configuration Backup and Promotion Runbook

## Objective

Use this runbook to back up Auth0 tenant configuration and safely promote approved configuration changes between environments.

This process is intended to reduce manual production changes, improve change control, and create evidence for review.

---

## Step 1: Confirm Scope

Before exporting or promoting configuration, confirm the scope of the work.

Document:

* Tenant name
* Environment
* Requested change
* Request owner
* IAM reviewer
* Target promotion date
* Production impact
* Rollback plan

Example scope:

```text
Change Request:
Promote updated Universal Login branding from dev tenant to production tenant.

Source Tenant:
company-dev.us.auth0.com

Target Tenant:
company-prod.us.auth0.com

Requested By:
Application Owner

IAM Reviewer:
Identity Engineer
```

---

## Step 2: Confirm Access

Confirm that the operator has approved access to the Auth0 tenant.

Required access may include:

* Auth0 dashboard access
* Management API access
* Deploy CLI credentials
* Permission to read tenant configuration
* Permission to update tenant configuration, if promoting changes

Do not use personal credentials for automation if a service account or machine-to-machine application is required.

---

## Step 3: Export Current Tenant Configuration

Before making changes, export the current tenant configuration.

Recommended backup naming format:

```text
tenant-backup-<environment>-<YYYY-MM-DD>
```

Example:

```text
tenant-backup-prod-2026-06-17
```

The export should capture current tenant configuration before the promotion begins.

Store the export in an approved location.

Do not store secrets in the repository.

---

## Step 4: Review Exported Configuration

Review the exported configuration before promotion.

Check for:

* Applications
* APIs
* Connections
* Actions
* Branding
* Universal Login settings
* Email templates
* Tenant settings
* Roles
* Log streams
* MFA settings
* Custom domains, if applicable

Confirm that the export does not accidentally expose secrets.

---

## Step 5: Prepare Promotion Package

Prepare the configuration that will be promoted.

The promotion package should include only approved changes.

Avoid promoting unrelated changes.

Before promotion, verify:

* Source environment was tested
* Owner approved the change
* IAM reviewer approved the change
* Production impact is understood
* Rollback plan is documented
* Backup was completed

---

## Step 6: Promote to Target Environment

Promote the approved configuration to the target tenant.

Recommended promotion path:

```text
Development → Test/Staging → Production
```

Do not promote directly from development to production unless specifically approved.

During promotion:

* Monitor for errors
* Capture command output
* Record timestamp
* Record operator name
* Do not ignore failed resources

---

## Step 7: Validate After Promotion

After the promotion is complete, validate the affected Auth0 behavior.

Common validation items:

* Login works
* Logout works
* Callback URLs are correct
* Applications are visible
* Connections are enabled correctly
* Actions execute as expected
* Branding appears correctly
* Email templates behave as expected
* MFA behavior is correct
* Logs show expected activity

---

## Step 8: Capture Evidence

Capture approved evidence such as:

* Backup folder name
* Export timestamp
* Promotion timestamp
* Change request ID
* Screenshot of updated setting
* Successful login test
* Successful logout test
* Reviewer approval note

Do not capture passwords, secrets, private tokens, or sensitive user data.

---

## Step 9: Rollback if Needed

If the promotion causes an issue, follow the rollback plan.

Possible rollback actions:

* Restore previous tenant configuration
* Revert specific changed settings manually
* Disable the affected Action
* Revert branding
* Revert application callback/logout URLs
* Disable a connection if it caused login issues

After rollback, document:

* What failed
* What was restored
* Who approved rollback
* What validation was completed

---

## Step 10: Close the Change

Before closing the work item, confirm:

* Backup was completed
* Promotion was completed
* Validation was completed
* Evidence was captured
* Owner approved the result
* Any issues were documented
* Follow-up tasks were created if needed

Final status:

```text
Completed / Completed with Issues / Rolled Back
```
