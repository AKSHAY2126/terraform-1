resource_group_name  = "myrg-1"
location             = "Central India"
storage_account_name = "${random_string.storage_account_name.result}"
container_name       = "${random_string.container_name.result}"
vnet_name            = "myVnet"
address_space        = ["10.0.0.0/16"]
subnet_name          = "mySubnet"
subnet_prefix        = "10.0.1.0/24"
