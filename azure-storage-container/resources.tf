resource "azurerm_resource_group" "sample_rg_12" {
  name = "sample_rg_12"
  location = "East US"
}

# random string
resource "random_string" "myrandom" {
  length = 16
  special = false
  upper = false
}

resource "azurerm_storage_account" "mysa" {
  name                     = "mysa${random_string.myrandom.id}"
  resource_group_name      = azurerm_resource_group.sample_rg_12.name
  location                 = azurerm_resource_group.sample_rg_12.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
    
  tags = {
    environment = "dev"
  }
}

