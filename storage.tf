provider "azurerm" {
  features {}
}

# main.tf in the root module

# main.tf in the root module

module "storage_account" {
  source              = "./azure-storage-module"
  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_name = var.storage_account_name
}


resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "azurerm_storage_container" "container-1" {
  name                  = "c1-${random_id.random_suffix.hex}"
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}
