// Variable demo for Strings
variable "resource-details" {
  type = "map"
  default =  {
    group_name = "testresourcegroup1"
    zone       = "West US"
    ENV        = "Production"    
  }
}

variable "NETWORK-CIDR" {
  default = "10.0.0.0/16"
}

resource "azurerm_resource_group" "test" {
  name     = var.resource-details["group_name"]
  location = var.resource-details["zone"]

  tags = {
    environment = var.resource-details["ENV"]
  }
}

resource "azurerm_virtual_network" "main" {
  name                = "${lower(var.resource-details["ENV"])}-network"
  address_space       = [""]
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
}