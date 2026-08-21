resource "azurerm_resource_group" "rg" {
  name     = "${var.business_unit}-${var.environment}-${var.rg_name}"
  location = var.rg_location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.business_unit}-${var.environment}-${var.vnet_name}"
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.1.0.0/16"]
  location            = azurerm_resource_group.rg.location

}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.1.0.0/24"]
}



