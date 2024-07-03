provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "existing" {
  name = "myrg-1"
}

module "storage_account" {
  source = "./module-1"

  storage_account_name   = var.storage_account_name
  resource_group_name    = data.azurerm_resource_group.existing.name  # Reference the existing resource group
  location               = data.azurerm_resource_group.existing.location  # Reference the existing resource group's location
}

resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "azurerm_storage_container" "demo1" {
  name                  = "c1-${random_id.random_suffix.hex}"
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}
