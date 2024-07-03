terraform {
  backend "azurerm" {
    resource_group_name  = "myrg-1"
    storage_account_name = "v50a7877jlqtgxdoytqcu7bh"
    container_name       = "rmtx1z0t5bmz51cg"
  }
}