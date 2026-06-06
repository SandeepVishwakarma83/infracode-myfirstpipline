resource "azurerm_storage_account" "todo" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.tier
  account_replication_type = var.replication
}
