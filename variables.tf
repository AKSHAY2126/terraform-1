variable "resource_group_name" {
  description = "The name of the resource group in which to create the resources."
  type        = string
}

variable "location" {
  description = "The location where the resources will be created."
  type        = string
}

# variable "storage_account_name" {
#   description = "The name of the storage account."
#   type        = string
# }

# variable "container_name" {
#   description = "The name of the storage container."
#   type        = string
# }

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  type        = string
}

