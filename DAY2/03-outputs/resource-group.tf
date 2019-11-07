resource "azurerm_resource_group" "test" {
  name     = var.resource-details["group_name"]
  location = var.resource-details["zone"]

  tags = {
    environment = var.resource-details["ENV"]
  }
}

