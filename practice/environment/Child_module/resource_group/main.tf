resource "azurerm_resource_group" "todo" {
  name     = var.name
  location = var.location
  tags     = var.tags
}
