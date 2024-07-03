provider "azurerm" {
  features {}
}

module "storage_account" {
  source = "./module/module-1/storage.tf"

  storage_account_name   = var.storage_account_name
  resource_group_name    = var.resource_group_name
  location               = var.location
}

resource "azurerm_storage_container" "demo1" {
  name                  = "c1"
  storage_account_name  = azurerm_storage_account.demo1.name
  container_access_type = "private"
}