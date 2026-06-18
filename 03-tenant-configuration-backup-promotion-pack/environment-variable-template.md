# Environment Variable Template

## Purpose

This template defines environment variable names for Auth0 Deploy CLI work across dev, test, and production tenants.

Do not paste real secrets into this file.

This file is a naming template only.

## Safety Rules

- Do not commit real client secrets.
- Do not commit Management API tokens.
- Do not commit passwords.
- Do not commit production credentials.
- Store real values in an approved secret store.

Approved storage examples:

- Local `.env` file ignored by Git
- GitHub Actions secrets
- Enterprise password vault
- CI/CD secret manager
- Approved cloud secret manager

## Development Tenant Variables

```bash
AUTH0_DOMAIN_DEV=
AUTH0_CLIENT_ID_DEV=
AUTH0_CLIENT_SECRET_DEV=
AUTH0_ALLOW_DELETE_DEV=false
```

## Test / Staging Tenant Variables

```bash
AUTH0_DOMAIN_TEST=
AUTH0_CLIENT_ID_TEST=
AUTH0_CLIENT_SECRET_TEST=
AUTH0_ALLOW_DELETE_TEST=false
```

## Production Tenant Variables

```bash
AUTH0_DOMAIN_PROD=
AUTH0_CLIENT_ID_PROD=
AUTH0_CLIENT_SECRET_PROD=
AUTH0_ALLOW_DELETE_PROD=false
```

## Local `.env` Example

Create a local `.env` file for your workstation.

Do not commit the `.env` file.

```bash
AUTH0_DOMAIN=example-dev.us.auth0.com
AUTH0_CLIENT_ID=replace-with-client-id
AUTH0_CLIENT_SECRET=replace-with-client-secret
AUTH0_ALLOW_DELETE=false
```

## GitHub Actions Secret Names

Recommended GitHub Actions secret names:

```text
AUTH0_DOMAIN_DEV
AUTH0_CLIENT_ID_DEV
AUTH0_CLIENT_SECRET_DEV

AUTH0_DOMAIN_TEST
AUTH0_CLIENT_ID_TEST
AUTH0_CLIENT_SECRET_TEST

AUTH0_DOMAIN_PROD
AUTH0_CLIENT_ID_PROD
AUTH0_CLIENT_SECRET_PROD
```

## Notes

Use separate credentials for each tenant.

Do not reuse production credentials in development or test.

Rotate credentials according to company policy.
