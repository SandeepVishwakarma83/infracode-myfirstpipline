resource "azurerm_bastion_host" "todo" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = "bastion-ip"
    subnet_id            = var.subnet_id
    public_ip_address_id = var.public_ip_id
  }
}
