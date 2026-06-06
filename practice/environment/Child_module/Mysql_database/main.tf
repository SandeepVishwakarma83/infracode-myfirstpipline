resource "azurerm_mysql_flexible_server" "todo"
 {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = var.sku

  administrator_login          = var.admin_user
  administrator_login_password = var.admin_pass
}
