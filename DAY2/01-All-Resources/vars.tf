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