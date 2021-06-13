terraform {
    backend "azurerm" {
        resource_group_name="NetworkWatcherRG"
        storage_account_name="moduledemo"
        container_name="modulecontainer"
        key="terraform.tfstate"
    }
}
provider "azurerm" {
    version = "=2.0.0"
features {}
}
resource "azurerm_resource_group" "rg" {
    name     = var.resource_group_name
    location = var.location
}
module "virtual-network" {
source = "./modules/virtual-network"
virtual_network_name            = var.virtual_network_name
resource_group_name             = var.resource_group_name
location                        = var.location
virtual_network_address_space   = var.virtual_network_address_space
subnet_name                     = var.subnet_name
subnet_address_prefix           = var.subnet_address_prefix
}
## output of the subnet-id 
output "azure_subnet_id" {
    description = "id of the subnet"
    value = module.virtual-network.subnet_id
}