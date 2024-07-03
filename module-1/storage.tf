resource "random_string" "myrandom" {
  length = 16
  upper = false 
  special = false
}

resource "azurerm_storage_account" "demo1" {
  name                     = "${var.storage_account_name}-${random_string.suffix.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}
