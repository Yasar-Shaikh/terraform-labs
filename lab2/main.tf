resource "azurerm_resource_group" "rg" {
  name     = "ntms-rg1"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  resource_group_name = "ntms-rg1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  name                = "ntms-vnet1"
}