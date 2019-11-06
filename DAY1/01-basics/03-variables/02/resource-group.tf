// Variable demo for Strings
variable "resource-groups" {
  type = "list"
  default =  ["testresourcegroup1", "devresourcegroup2"]
}

resource "azurerm_resource_group" "test" {
  name     = var.resource-groups[0]
  location = "West US"

  tags = {
    environment = "Test"
  }
}

resource "azurerm_resource_group" "dev" {
  name     = var.resource-groups[1]
  location = "West US"

  tags = {
    environment = "DEV"
  }
}