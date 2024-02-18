resource "azurerm_resource_group" "sam_rg_12" {
  name = "sam_rg_12"
  location = "East US"
}

resource "azurerm_virtual_network" "myvnet" {
  name = "myvnet"
  resource_group_name = azurerm_resource_group.sam_rg_12.name
  location = azurerm_resource_group.sam_rg_12.location
  address_space = [ "10.0.0.0/16" ]
    tags = {
        "environment" = "dev"
    }
}

resource "azurerm_subnet" "subneta" {
  name = "subneta"
  address_prefixes = [ "10.0.1.0/24" ]
  resource_group_name = azurerm_resource_group.sam_rg_12.name
  virtual_network_name = azurerm_virtual_network.myvnet.name

}

resource "azurerm_public_ip" "myip" {
  name = "myip"
  resource_group_name = azurerm_resource_group.sam_rg_12.name
  location = azurerm_resource_group.sam_rg_12.location
  allocation_method = "Dynamic"
  tags = {
    "environment" = "dev"
  }
}

resource "azurerm_network_interface" "mynic" {
  name = "mynic"
  resource_group_name = azurerm_resource_group.sam_rg_12.name
  location = azurerm_resource_group.sam_rg_12.location
  ip_configuration {
    name = "internal"
    subnet_id = azurerm_subnet.subneta.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.myip.id
  }
}