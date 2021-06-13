#Azure authentication variables


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