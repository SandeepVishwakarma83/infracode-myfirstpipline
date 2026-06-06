variable "name" { type = string }
variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "size" { type = string }
variable "admin_username" { type = string }
variable "ssh_public_key" { type = string }
variable "nic_id" { type = string }
variable "image" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}
