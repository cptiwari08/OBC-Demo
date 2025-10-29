resource "azurerm_public_ip" "nic" {
  for_each            = var.nic_config

  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location            # e.g., "Central India"
  allocation_method   = each.value.allocation_method   # "Static" or "Dynamic"
  sku                 = each.value.sku                 # "Standard" or "Basic"
}


