#!/bin/bash

RESOURCE_GROUP_NAME=udacity-final-excercise-rg
STORAGE_ACCOUNT_NAME=stgaccntudacityfinal
CONTAINER_NAME=containerudacityfinal

echo "This a a sample setup of local env for Terraform"
export ARM_SUBSCRIPTION_ID=""
export ARM_CLIENT_ID=""
export ARM_CLIENT_SECRET=""
export ARM_TENANT_ID=""
export ARM_ACCESS_KEY= $(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)  
# ARM_CLIENT_SECRET:  cannot be retrieved after creation.

echo "Exit"
