resource "azurerm_virtual_network" "main" {
  name                = "${lower(var.resource-details["ENV"])}-network"
  address_space       = [var.NETWORK-CIDR]
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
}

resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = cidrsubnet(var.NETWORK-CIDR, 8, 0)
}