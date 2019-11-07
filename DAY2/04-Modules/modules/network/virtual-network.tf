resource "azurerm_virtual_network" "main" {
  name                = "${lower(var.resource-details["ENV"])}-network"
  address_space       = [var.NETWORK-CIDR]
  location            = var.RG_LOC
  resource_group_name = var.RG_NAME
}