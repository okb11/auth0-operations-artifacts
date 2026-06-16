#!/bin/bash

AUTH0_DOMAIN="YOUR_TENANT.auth0.com"
MGMT_API_TOKEN="YOUR_MANAGEMENT_API_TOKEN"
CONNECTION_ID="YOUR_DATABASE_CONNECTION_ID"
USERS_FILE="sample-auth0-users.json"

curl --request POST \
  --url "https://${AUTH0_DOMAIN}/api/v2/jobs/users-imports" \
  --header "Authorization: Bearer ${MGMT_API_TOKEN}" \
  --form "users=@${USERS_FILE}" \
  --form "connection_id=${CONNECTION_ID}"
