variable "nic_config" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_name         = string
    public_ip_name      = string
    sku                 = string
    allocation_method   = string
    ip_configuration    = list(object({
      name                          = string
      private_ip_address_allocation = string
    }))
  }))
}

# variable "public_ip" {
#   type = map(object({
#     public_ip_name                 = string
#     location            = string
#     resource_group_name = string
#     allocation_method   = string
#     sku                 = string
#   }))
  
# }
