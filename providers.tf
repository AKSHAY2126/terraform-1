terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    
  }
}

provider "azurerm" {
  subscription_id = "71aaef51-8d4b-4b1d-9e60-7208f4010806"
  tenant_id       = "a49be146-23d3-44fa-951f-f7210572c2ad"
  client_id = "24d083e5-cf7f-47c9-b923-17446ecc095b"
  client_secret = "~E.8Q~Wqn8Hyhh1Vf7T~UtBPzfu1Qa4d-zVnYb52"
  features{}
}
