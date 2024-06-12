provider "azurerm" {
    features {}
}
resource "azurerm_resource_group" "main" {
  name     = "${var.environment}-vnet-env"
  location = var.location
}

resource "azurerm_virtual_network" "az-vnet" {
  name                = "AzureVnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "az-subnet" {
  name                 = "AzureSubnet"
  virtual_network_name = azurerm_virtual_network.az-vnet.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes     = ["10.0.1.0/24"]
}