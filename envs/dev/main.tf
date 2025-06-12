provider "azurerm" {
  features {}
}

module "rg" {
  source  = "../../modules/rg"
  name    = "ecommerce-rg-dev"
  location = var.location
}

module "vnet" {
  source          = "../../modules/vnet"
  vnet_name       = "ecom-vnet-dev"
  address_space   = ["10.0.0.0/16"]
  location        = var.location
  resource_group  = module.rg.name
}

