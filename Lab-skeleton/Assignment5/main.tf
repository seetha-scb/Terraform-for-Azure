terraform {
    backend "azurerm" {
        
    }
}
provider "azurerm" {
    version = "=2.0.0"
features {}
}
resource "azurerm_resource_group" "rg" {
    
}
module "virtual-network" {

}
## output of the subnet-id 
output "azure_subnet_id" {
    description = "id of the subnet"
    
}