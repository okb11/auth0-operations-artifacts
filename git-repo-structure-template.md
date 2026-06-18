# Git Repo Structure Template

## Purpose

This template shows a recommended repository structure for managing Auth0 tenant configuration across environments.

## Recommended Structure

```text
auth0-tenant-config/
  README.md
  .gitignore

  config-templates/
    config-dev.example.json
    config-test.example.json
    config-prod.example.json

  environments/
    dev/
      tenant.yaml
      clients/
      connections/
      actions/
      resource-servers/
      roles/
      branding/
      prompts/
      email-templates/
      organizations/
      log-streams/

    test/
      tenant.yaml
      clients/
      connections/
      actions/
      resource-servers/
      roles/
      branding/
      prompts/
      email-templates/
      organizations/
      log-streams/

    prod/
      tenant.yaml
      clients/
      connections/
      actions/
      resource-servers/
      roles/
      branding/
      prompts/
      email-templates/
      organizations/
      log-streams/

  exports/
    dev/
    test/
    prod/

  promotion-packages/
    dev-to-test/
    test-to-prod/

  drift-reports/
    dev/
    test/
    prod/

  evidence/
    exports/
    promotions/
    restores/

  scripts/
    export-tenant.sh
    promote-tenant.sh
    compare-drift.sh
```

## `.gitignore` Recommendation

Use a `.gitignore` file to avoid committing sensitive or generated files.

```text
.env
*.local
config-dev.json
config-test.json
config-prod.json
node_modules/
dist/
secrets/
*.log
```

## Folder Purpose

| Folder | Purpose |
|---|---|
| config-templates | Example config files without secrets |
| environments | Expected tenant configuration by environment |
| exports | Raw tenant exports used for backup or review |
| promotion-packages | Approved changes prepared for promotion |
| drift-reports | Configuration drift comparison notes |
| evidence | Approved screenshots, logs, and validation notes |
| scripts | Helper scripts for export, promotion, and drift checks |

## Naming Standards

Use clear environment names:

```text
dev
test
prod
```

Use date-based export folders:

```text
YYYY-MM-DD-short-description
```

Example:

```text
2026-06-17-pre-production-promotion
```

## Important Rules

- Keep production configuration carefully reviewed.
- Do not commit secrets.
- Do not mix dev and prod configuration.
- Do not promote unreviewed changes.
- Keep evidence separate from secrets.
