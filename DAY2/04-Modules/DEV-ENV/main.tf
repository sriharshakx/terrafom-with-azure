module "DEV-RG" {
  source                = "../modules/resource-groups"
  resource-details      = var.resource-details
}

module "DEV-NETWORK" {
  source                = "../modules/network"
  NETWORK-CIDR          = var.NETWORK-CIDR
  RG_LOC                = module.DEV-RG.RG_LOC
  RG_NAME               = module.DEV-RG.RG_NAME
}