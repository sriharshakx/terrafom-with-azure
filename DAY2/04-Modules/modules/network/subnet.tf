resource "azurerm_subnet" "internal" {
  name                 = "internal"
  resource_group_name  = var.RG_NAME
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = cidrsubnet(var.NETWORK-CIDR, 8, 0)
}