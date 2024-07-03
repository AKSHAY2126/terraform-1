
provider "azurerm" {
  features {}
}

# Import existing resource group
resource "azurerm_resource_group" "myrg" {
  name     = "myrg-1"
  location = "central India"

  # This block is for importing an existing resource group
  lifecycle {
    ignore_changes = [tags]
  }
}

# Define other resources, such as storage account and storage container
module "storage_account" {
  source = "./module-1"

  storage_account_name   = var.storage_account_name
  resource_group_name    = azurerm_resource_group.myrg.name  # Reference the existing resource group
  location               = azurerm_resource_group.myrg.location  # Reference the existing resource group's location
}

resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "azurerm_storage_container" "demo1" {
  name                  = "c1-${random_id.random_suffix.hex}"
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}
