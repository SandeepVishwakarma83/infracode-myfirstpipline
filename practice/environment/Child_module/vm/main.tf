resource "azurerm_linux_virtual_machine" "todo" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  admin_username      = var.admin_username
  network_interface_ids = [var.nic_id]
  admin_ssh_key {
    username   = var.admin_username
    public_key = var.ssh_public_key
    }

  source_image_reference {
    publisher = var.image.publisher
    offer     = var.image.offer
    sku       = var.image.sku
    version   = var.image.version
  
  }

}
