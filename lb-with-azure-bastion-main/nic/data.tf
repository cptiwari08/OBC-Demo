
data "azurerm_subnet" "subnets" {
  for_each = var.nic_config

  name                 = each.value.subnet_name
  virtual_network_name = "OptumappVnet"
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "ips" {
  for_each = var.nic_config

  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}
// ...existing code...
# data "azurerm_subnet" "subnets" {
#   for_each = var.nic_config

#   name                 = each.value.subnet_name
#   virtual_network_name = lookup(each.value, "vnet_name", "OptumVnet")  # ensure matches your VNet
#   resource_group_name  = each.value.resource_group_name
# }

# data "azurerm_public_ip" "ips" {
#   for_each = { for k, v in var.nic_config : k => v
#                if contains(keys(v), "public_ip_name") && v.public_ip_name != "" }

#   name                = each.value.public_ip_name
#   resource_group_name = each.value.resource_group_name
# }