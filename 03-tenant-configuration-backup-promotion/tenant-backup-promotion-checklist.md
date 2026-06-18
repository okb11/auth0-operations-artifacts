# Tenant Configuration Backup and Promotion Checklist

## Request Intake

* [ ] Change request received
* [ ] Request owner identified
* [ ] IAM reviewer identified
* [ ] Source tenant confirmed
* [ ] Target tenant confirmed
* [ ] Environment confirmed
* [ ] Requested change documented
* [ ] Production impact reviewed
* [ ] Target promotion date confirmed

## Access and Safety

* [ ] Operator has approved Auth0 access
* [ ] Management API access reviewed
* [ ] No personal credentials used for automation unless approved
* [ ] No secrets stored in repository
* [ ] No passwords stored in repository
* [ ] No Management API tokens committed

## Backup

* [ ] Current tenant configuration exported
* [ ] Backup folder named clearly
* [ ] Backup timestamp recorded
* [ ] Backup stored in approved location
* [ ] Export reviewed for sensitive content
* [ ] Backup confirmed before promotion

## Change Review

* [ ] Change tested in development
* [ ] Change tested in staging or test, if available
* [ ] Only approved configuration changes included
* [ ] Unrelated changes removed
* [ ] Application settings reviewed
* [ ] Connection settings reviewed
* [ ] Action changes reviewed
* [ ] Branding changes reviewed
* [ ] Email template changes reviewed
* [ ] MFA changes reviewed, if applicable
* [ ] Tenant settings reviewed, if applicable

## Approval

* [ ] Business/application owner approval received
* [ ] IAM reviewer approval received
* [ ] Security approval received, if required
* [ ] Change window approved, if required
* [ ] Rollback plan approved

## Promotion

* [ ] Promotion command prepared
* [ ] Target tenant confirmed before promotion
* [ ] Production tenant double-checked before promotion
* [ ] Promotion executed
* [ ] Command output reviewed
* [ ] Errors documented
* [ ] Failed resources investigated

## Validation

* [ ] Login tested successfully
* [ ] Logout tested successfully
* [ ] Callback URL behavior tested
* [ ] Application behavior tested
* [ ] Connection behavior tested
* [ ] Actions tested, if applicable
* [ ] Branding validated, if applicable
* [ ] Email templates validated, if applicable
* [ ] MFA behavior validated, if applicable
* [ ] Auth0 logs reviewed

## Evidence

* [ ] Backup evidence captured
* [ ] Promotion evidence captured
* [ ] Validation evidence captured
* [ ] Owner approval captured
* [ ] Issues documented
* [ ] Evidence stored in approved location

## Rollback Readiness

* [ ] Rollback plan documented
* [ ] Previous configuration available
* [ ] Rollback owner identified
* [ ] Rollback validation steps defined

## Closure

* [ ] Change marked successful
* [ ] Owner notified
* [ ] IAM reviewer notified
* [ ] Follow-up tasks created if needed
* [ ] Lessons learned documented if needed
