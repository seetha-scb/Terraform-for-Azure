terraform {
  backend "azurerm" {
    resource_group_name   = "multitstategroup"
    storage_account_name  = "multitstatestorage"
    container_name        = "multitstatecontainer"
    key                   = "terraform.tfstate"
  }
}