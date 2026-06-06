variable "prefix" {
  type        = string
  description = "Prefix for resource names (eg: prod, dev)"
  default     = "demo"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "centralindia"
}

variable "tags" {
  type    = map(string)
  default = { owner = "devops" }
}

variable "subnets" {
  type = map(object({
    name           = string
    address_prefix = string
    service_endpts = optional(list(string), [])
  }))
  description = "Map of subnets to create inside the VNet"
  default = {
    "app" = { name = "app-subnet", address_prefix = "10.0.1.0/24" }
    "db"  = { name = "db-subnet",  address_prefix = "10.0.2.0/24" }
  }
}

variable "create_acr" {
  type    = bool
  default = true
}

variable "create_aks" {
  type    = bool
  default = true
}

variable "create_mysql" {
  type    = bool
  default = false
}

variable "vm_map" {
  type = map(object({
    name        = string
    subnet_key  = string
    size        = string
    admin_user  = string
    ssh_pub_key = string
  }))
  default = {}
  description = "Map of VMs to create; key is arbitrary identifier"
}
