#!/bin/bash

echo "This a a sample setup of local env for Terraform"

# Setting up Storage account
TF_VAR_RESOURCE_GROUP_NAME=udacity-final-excercise-rg
TF_VAR_STORAGE_ACCOUNT_NAME=stgaccntudacityfinal
TF_VAR_CONTAINER_NAME=containerudacityfinal
ARM_ACCESS_KEY= $(az storage account keys list --resource-group $TF_VAR_RESOURCE_GROUP_NAME --account-name $TF_VAR_STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)  

export TF_VAR_RESOURCE_GROUP_NAME
export TF_VAR_STORAGE_ACCOUNT_NAME
export TF_VAR_CONTAINER_NAME
export ARM_ACCESS_KEY


# Setting up the service plan
TF_VAR_subscription_id="c68fdf5c-0c35-4c1c-a05f-b0acbc60cb2a"
TF_VAR_tenant_id="f21fdef6-971d-4e0d-b0ff-223f5c03c883"
TF_VAR_client_id="3700d3ff-c61b-49bf-aef6-54bc3a568d5e"
TF_VAR_client_secret=""


export TF_VAR_subscription_id
export TF_VAR_tenant_id
export TF_VAR_client_id
export TF_VAR_client_secret
# ARM_CLIENT_SECRET:  cannot be retrieved after creation.

echo "Exit"
