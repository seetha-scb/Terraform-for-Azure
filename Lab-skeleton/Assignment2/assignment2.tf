#Azure authentication variables
variable "azure_subscription_id" {
  type = string
  description = "Azure Subscription ID"
}
variable "azure_client_id" {
  type = string
  description = "Azure Client ID"
}
variable "azure_client_secret" {
  type = string
  description = "Azure Client Secret"
}
variable "azure_tenant_id" {
  type = string
  description = "Azure Tenant ID"
}
variable "prefix" {
  default = "tfvmex"
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.44.0"
    }
  }
}
provider "azurerm" {
  features {}
  
}

resource "azurerm_resource_group" "main" {
  
}

resource "azurerm_virtual_network" "mainVnet" {
  
}

resource "azurerm_subnet" "internal" {
  
}

resource "azurerm_network_interface" "mainNIC" {
  
}

resource "azurerm_virtual_machine" "mainVM" {
  

  
}
