# Auth0 Bulk User Import Checklist

## Planning

- [ ] Confirm Auth0 tenant
- [ ] Confirm environment
- [ ] Confirm target database connection
- [ ] Confirm connection ID
- [ ] Confirm source user count
- [ ] Confirm source export approval
- [ ] Confirm field mapping
- [ ] Confirm password migration strategy
- [ ] Confirm email verification strategy
- [ ] Confirm duplicate handling
- [ ] Confirm rollback approach

## File Preparation

- [ ] Convert source export to Auth0 JSON format
- [ ] Confirm required fields exist
- [ ] Confirm email format
- [ ] Confirm no duplicate emails
- [ ] Confirm no unnecessary PII
- [ ] Confirm file naming standard

## Validation

- [ ] Run pre-import validation script
- [ ] Resolve validation errors
- [ ] Save validation result as evidence

## Test Import

- [ ] Import small test file
- [ ] Confirm import job completed
- [ ] Confirm test user appears in Auth0
- [ ] Confirm expected profile fields
- [ ] Confirm app_metadata
- [ ] Confirm user_metadata
- [ ] Capture screenshots

## Production Import

- [ ] Confirm approval
- [ ] Confirm change ticket
- [ ] Confirm import file
- [ ] Run import job
- [ ] Capture job ID
- [ ] Monitor job status
- [ ] Review failed records
- [ ] Complete reconciliation
- [ ] Obtain sign-off

## Evidence

- [ ] Target connection screenshot
- [ ] Import job screenshot
- [ ] Job ID
- [ ] Failed records tracker
- [ ] Reconciliation result
- [ ] Final approval
