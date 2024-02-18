terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.0.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features{}
  subscription_id = "f0bfd3cc-6cf1-46b3-9fa2-b6d0fa83b0e2"
  client_id = "0aa4ec9d-3f6c-4172-ab19-2a18a74d93a8"
  client_secret = "yiW8Q~z6Oz50Kn3djENjDI28XThzr3IWFf5sdc4E"
  tenant_id = "11ca5529-1e43-4b33-a89a-f55487af70a9"
}