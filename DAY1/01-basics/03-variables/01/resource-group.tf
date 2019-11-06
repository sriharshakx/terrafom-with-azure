// Variable demo for Strings
variable "resource-group" {
  default = "testresourcegroup1"
}

resource "azurerm_resource_group" "test" {
  name     = var.resource-group
  location = "West US"

  tags = {
    environment = "Production"
  }
}