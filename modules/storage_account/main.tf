resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "random_string" "storage_account_name" {
  length  = 24
  special = false
  upper   = false
  lower   = true
}

resource "azurerm_storage_account" "sa" {
  name                     = random_string.storage_account_name.result
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "random_string" "container_name" {
  length  = 16
  special = false
  upper   = false
  lower   = true
}

resource "azurerm_storage_container" "container" {
  name                  = random_string.container_name.result
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}


