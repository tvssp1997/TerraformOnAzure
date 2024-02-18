resource "azurerm_resource_group" "myrg1" {
  #   name = "${var.resource_group_name}-${var.environment}"
  name     = "${var.resource_group_name}-${var.environment}-${random_string.random_string.id}"
  location = var.resource_group_location
  tags     = local.common_tags
}
