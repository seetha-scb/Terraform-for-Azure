# Define Terraform provider
terraform {
  required_version = ">= 0.12"
}
#Configure the Azure Provider
provider "azurerm" {
  features {}
  version         = ">= 2.0"
  environment     = "public"
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
}