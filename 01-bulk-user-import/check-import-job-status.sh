#!/bin/bash

AUTH0_DOMAIN="YOUR_TENANT.auth0.com"
MGMT_API_TOKEN="YOUR_MANAGEMENT_API_TOKEN"
JOB_ID="YOUR_IMPORT_JOB_ID"

curl --request GET \
  --url "https://${AUTH0_DOMAIN}/api/v2/jobs/${JOB_ID}" \
  --header "Authorization: Bearer ${MGMT_API_TOKEN}"
