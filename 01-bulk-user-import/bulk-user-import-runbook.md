# Auth0 Bulk User Import Runbook

## 1. Purpose

Use this runbook to import users from a source system into an Auth0 database connection.

This runbook is intended for internal IAM / CIAM delivery teams performing Auth0 migrations, test imports, production imports, or reconciliation activities.

---

## 2. Scope

This runbook covers:

- Import planning
- Source-to-Auth0 field mapping
- Import file preparation
- Pre-import validation
- Import job execution
- Import job monitoring
- Failed record handling
- Reconciliation
- Evidence capture
- Final sign-off

This runbook does not cover:

- Full application onboarding
- Tenant configuration backup
- MFA policy configuration
- Custom database migration logic
- Production cutover planning

---

## 3. Required Inputs

Before starting, collect the following:

| Item | Required? | Notes |
|---|---:|---|
| Auth0 tenant domain | Yes | Example: `example.us.auth0.com` |
| Environment | Yes | Dev, Test, Stage, or Prod |
| Target database connection name | Yes | OliversDatabase |
| Target database connection ID | Yes | con_C6UtinqnbkcQUxt5 |
| Source user export | Yes | Must be approved for use |
| Source user count | Yes | Used for reconciliation |
| Field mapping | Yes | Source fields mapped to Auth0 fields |
| Password hash strategy | Yes | Confirm import, reset, or staged migration |
| Management API token | Yes | Use approved secure process |
| Change ticket | Recommended | Required for production |
| Approval/sign-off | Recommended | Required for production |

---

## 4. Where to Go in Auth0

### 4.1 Confirm the Tenant

1. Log in to the Auth0 Dashboard.
2. Confirm you are in the correct tenant.
3. Record the tenant name and domain.

Record:

```text
Tenant Name:
Tenant Domain:
Environment:
Reviewer:
Date:
