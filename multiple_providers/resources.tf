resource "azurerm_resource_group" "test122_rg" {
  name = "test122_rg"
  location = "East US"
}

resource "azurerm_resource_group" "test123_rg" {
  name = "test123_rg"
  location = "West US"
  provider = azurerm.provider2-westus
}

