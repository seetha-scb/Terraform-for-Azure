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
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}
provider "azurerm" {
    features {}
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
  
}

resource "azurerm_resource_group" "main" {
    name     = "MyDB-RG"
    location = "East US"
}

resource "azurerm_sql_server" "main" {
    name                         = "seethasqlserver"
    resource_group_name          = "${azurerm_resource_group.main.name}"
    location                     = "${azurerm_resource_group.main.location}"
    version                      = "12.0"
    administrator_login          = "sita110378@gmail.com"
    administrator_login_password = "Zohocorp@5349"
}

resource "azurerm_sql_firewall_rule" "main" {
  name                = "AlllowAzureServices"
  resource_group_name = "${azurerm_resource_group.main.name}"
  server_name         = "${azurerm_sql_server.main.name}"
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_sql_database" "main" {
  name                             = "seethasqldatabase"
  resource_group_name              = "${azurerm_resource_group.main.name}"
  location                         = "${azurerm_resource_group.main.location}"
  server_name                      = "${azurerm_sql_server.main.name}"
  edition                          = "Standard"
  requested_service_objective_name = "S0"
}