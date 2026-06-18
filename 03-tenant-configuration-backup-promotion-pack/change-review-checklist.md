# Change Review Checklist

## Purpose

Use this checklist before promoting Auth0 tenant configuration from one environment to another.

The goal is to confirm exactly what changed, whether it was approved, and whether it is safe to promote.

## Request Details

- [ ] Change request ID documented
- [ ] Request owner identified
- [ ] IAM reviewer identified
- [ ] Source tenant confirmed
- [ ] Target tenant confirmed
- [ ] Requested change documented
- [ ] Business reason documented
- [ ] Target promotion date confirmed

## Export and Backup

- [ ] Source tenant export completed
- [ ] Target tenant pre-change backup completed
- [ ] Export folder names documented
- [ ] Export timestamps recorded
- [ ] Export reviewed for sensitive values
- [ ] Backup stored in approved location

## Configuration Review

Review changed resources:

- [ ] Applications / clients
- [ ] Callback URLs
- [ ] Logout URLs
- [ ] Allowed web origins
- [ ] Allowed CORS origins
- [ ] Connections
- [ ] Actions
- [ ] APIs / resource servers
- [ ] Roles
- [ ] Branding
- [ ] Prompts
- [ ] Email templates
- [ ] Organizations
- [ ] Log streams
- [ ] Tenant settings
- [ ] MFA / Guardian settings

## Environment Review

- [ ] No localhost URLs in production
- [ ] No dev URLs in production
- [ ] No test URLs in production
- [ ] No production secrets in lower environments
- [ ] Environment-specific values reviewed
- [ ] Custom domains reviewed if applicable

## Security Review

- [ ] No client secrets committed
- [ ] No Management API tokens committed
- [ ] No passwords committed
- [ ] No private keys committed
- [ ] No sensitive user data committed
- [ ] Grant types reviewed
- [ ] Token settings reviewed
- [ ] MFA impact reviewed
- [ ] Email verification impact reviewed
- [ ] Attack protection impact reviewed

## Testing

- [ ] Change tested in development
- [ ] Change tested in test/staging
- [ ] Login tested
- [ ] Logout tested
- [ ] Callback behavior tested
- [ ] Connection behavior tested
- [ ] Action behavior tested if applicable
- [ ] Email behavior tested if applicable
- [ ] Application owner validated expected behavior

## Approval

- [ ] Business owner approval received
- [ ] Technical owner approval received
- [ ] IAM reviewer approval received
- [ ] Security approval received if required
- [ ] Change window approved if required
- [ ] Rollback plan approved

## Promotion Readiness

- [ ] Promotion package prepared
- [ ] Unrelated changes removed
- [ ] Target tenant confirmed
- [ ] Operator confirmed
- [ ] Rollback owner confirmed
- [ ] Evidence location confirmed

## Final Decision

Promotion status:

```text
Approved / Rejected / Needs Changes
```

Reviewer notes:

```text
Add notes here.
```
