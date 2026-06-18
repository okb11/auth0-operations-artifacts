# Auth0 Deploy CLI Setup Guide

## Purpose

This guide explains how to set up the Auth0 Deploy CLI for repeatable tenant configuration backup and promotion across dev, test, and production tenants.

## What This Enables

The Deploy CLI allows teams to:

- Export Auth0 tenant configuration
- Store configuration in source control
- Review configuration changes
- Promote approved changes between tenants
- Restore a previous known-good configuration

## Prerequisites

Before starting, confirm you have:

- Access to the Auth0 tenant
- Permission to create or use a Machine-to-Machine application
- Permission to authorize access to the Auth0 Management API
- Node.js and npm installed
- Access to the Git repository used for tenant configuration
- Approval to export or promote tenant configuration

## Recommended Tenant Model

Use separate tenants for each environment:

```text
company-dev.us.auth0.com
company-test.us.auth0.com
company-prod.us.auth0.com
```

## Step 1: Install the Deploy CLI

Install the Auth0 Deploy CLI:

```bash
npm install -g auth0-deploy-cli
```

Verify the installation:

```bash
a0deploy --version
```

## Step 2: Create a Machine-to-Machine Application

In Auth0:

1. Go to Applications > Applications
2. Click Create Application
3. Select Machine to Machine Applications
4. Name the application:

```text
Auth0 Deploy CLI - <environment>
```

Example:

```text
Auth0 Deploy CLI - Dev
```

5. Select the Auth0 Management API
6. Authorize the application

## Step 3: Assign Required Management API Permissions

Grant only the permissions required for the resources being managed.

Common permissions may include:

- read:clients
- update:clients
- read:connections
- update:connections
- read:resource_servers
- update:resource_servers
- read:actions
- update:actions
- read:roles
- update:roles
- read:branding
- update:branding
- read:tenant_settings
- update:tenant_settings

Do not grant broad permissions unless required and approved.

## Step 4: Store Credentials Safely

For each tenant, capture:

```text
AUTH0_DOMAIN
AUTH0_CLIENT_ID
AUTH0_CLIENT_SECRET
```

Do not commit real secrets to GitHub.

Use one of the following approved storage methods:

- Local `.env` file ignored by Git
- GitHub Actions secrets
- CI/CD secret store
- Enterprise password vault
- Approved internal secret manager

## Step 5: Create a Config File

Create a local config file if using config-based authentication.

Example:

```json
{
  "AUTH0_DOMAIN": "example-dev.us.auth0.com",
  "AUTH0_CLIENT_ID": "REPLACE_WITH_CLIENT_ID",
  "AUTH0_CLIENT_SECRET": "REPLACE_WITH_CLIENT_SECRET",
  "AUTH0_ALLOW_DELETE": false
}
```

Save this locally as:

```text
config-dev.json
```

Do not commit real config files containing secrets.

## Step 6: Test Export Access

Run a test export from a lower environment first:

```bash
a0deploy export -c=config-dev.json --format=directory --output_folder=exports/dev
```

Confirm the export creates configuration files.

## Step 7: Test Import Access in Dev Only

Before using test or production, validate import behavior in a development tenant:

```bash
a0deploy import -c=config-dev.json --input_file=exports/dev
```

Do not test import directly in production.

## Step 8: Document Setup

Record the following:

- Tenant name
- Environment
- Machine-to-Machine application name
- Operator
- Date configured
- Approved permissions
- Storage location for secrets
- Export test result
- Import test result

## Setup Completion Criteria

Setup is complete when:

- Deploy CLI is installed
- Machine-to-Machine application exists
- Required permissions are assigned
- Secrets are stored safely
- Dev export works
- Dev import test is validated
- Setup evidence is documented
