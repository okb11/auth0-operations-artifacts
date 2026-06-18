# Configuration Drift Report Template

## Purpose

This template compares expected Auth0 configuration in source control against the actual configuration exported from an Auth0 tenant.

Use this to detect manual dashboard changes, missed promotions, or environment inconsistencies.

## Report Details

Report Name:

Date:

Prepared By:

Tenant:

Environment:

Source Control Branch:

Export Folder:

Change Request ID, if applicable:

## Drift Summary

Overall status:

```text
No Drift / Drift Found / Needs Review
```

Summary:

```text
Add a short summary of what was found.
```

## Comparison Sources

Expected configuration source:

```text
Example:
environments/prod/
```

Actual tenant export:

```text
Example:
exports/prod/2026-06-17-current-export/
```

## Drift Categories

Review each category.

| Category | Drift Found? | Notes |
|---|---:|---|
| Applications / clients | Yes / No | |
| Callback URLs | Yes / No | |
| Logout URLs | Yes / No | |
| Web origins | Yes / No | |
| Connections | Yes / No | |
| Actions | Yes / No | |
| APIs / resource servers | Yes / No | |
| Roles | Yes / No | |
| Branding | Yes / No | |
| Prompts | Yes / No | |
| Email templates | Yes / No | |
| Organizations | Yes / No | |
| Log streams | Yes / No | |
| Tenant settings | Yes / No | |
| MFA / Guardian settings | Yes / No | |

## Detailed Findings

### Finding 1

Resource type:

Resource name:

Expected value:

```text
Add expected value here.
```

Actual value:

```text
Add actual value here.
```

Risk:

```text
Low / Medium / High
```

Recommended action:

```text
Accept drift / Revert tenant / Update source control / Needs owner review
```

Owner:

Target resolution date:

---

### Finding 2

Resource type:

Resource name:

Expected value:

```text
Add expected value here.
```

Actual value:

```text
Add actual value here.
```

Risk:

```text
Low / Medium / High
```

Recommended action:

```text
Accept drift / Revert tenant / Update source control / Needs owner review
```

Owner:

Target resolution date:

## Risk Assessment

Potential impact:

- [ ] Login impact
- [ ] Logout impact
- [ ] Application access impact
- [ ] Security control impact
- [ ] MFA impact
- [ ] Branding/user experience impact
- [ ] Logging/monitoring impact
- [ ] No user impact expected

Risk notes:

```text
Add notes here.
```

## Recommended Next Steps

- [ ] Review drift with IAM owner
- [ ] Review drift with application owner
- [ ] Decide whether source control or tenant should be updated
- [ ] Create change request if correction is needed
- [ ] Promote corrected configuration
- [ ] Re-run drift report after correction

## Approval

Prepared by:

Reviewed by:

Approved by:

Date approved:

Final decision:

```text
No action needed / Update tenant / Update source control / Investigate further
```
