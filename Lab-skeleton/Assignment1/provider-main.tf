# Define Terraform provider
terraform {
  required_version = ">= 0.12"
}
#Configure the Azure Provider
provider "azurerm" {
  features {}
  version         = ">= 2.0"
  environment     = "public"
  
}