// Variable demo for Strings
variable "resource-details" {
  type = "map"
  default =  {
    group_name = "testresourcegroup1"
    zone       = "West US"
    ENV        = "Production"    
  }
}

resource "azurerm_resource_group" "test" {
  name     = var.resource-details["group_name"]
  location = var.resource-details["zone"]

  tags = {
    environment = var.resource-details["ENV"]
  }
}