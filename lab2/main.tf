resource "azurerm_resource_group" "rg" {
  name     = "ntms-rg1"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.1.0.0/16"]
  location            = azurerm_resource_group.rg.location
  name                = "ntms-vnet"
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.0.0/24"]
}


