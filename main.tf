terraform {
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}


locals {
  regions = {
    brazilsouth = "zb1"
    eastus      = "zu1"
    eastus2     = "zu2"
    northeurope = "neu"
    westeurope  = "weu"
    uksouth     = "suk"
  }
  geo_region = lookup(local.regions, var.location)
}

resource "azurerm_resource_group" "resource_group" {
  name     = join("", [var.name, var.environment, local.geo_region, "rsg"])
  location = var.location
  tags = merge({
    description = var.description
  }, var.custom_tags)
}
