# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
  # Authentication can be provided using one of these methods:
  # 1. Environment variables (ARM_SUBSCRIPTION_ID, ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID)
  # 2. Azure CLI credentials
  # 3. Explicit parameters as shown below:
  
  subscription_id = "00000000-0000-0000-0000-000000000000" # Replace with your subscription ID
  # tenant_id       = "00000000-0000-0000-0000-000000000000" # Uncomment and replace if needed
  # client_id       = "00000000-0000-0000-0000-000000000000" # Uncomment and replace if needed
  # client_secret   = "your-client-secret"                   # Uncomment and replace if needed
}