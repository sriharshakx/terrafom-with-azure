resource "azurerm_resource_group" "test" {
  name     = "${lower(var.resource-details["ENV"])}-${var.resource-details["group_name"]}"
  location = var.resource-details["zone"]

  tags = {
    environment = var.resource-details["ENV"]
  }
}