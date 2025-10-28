data "azurerm_nat_gateway" "natgw" {
  name                = "Optum-nat-gw"
  resource_group_name = "Optum_rg1"
}

data "azurerm_public_ip" "pip" {
  name                = "NAT-public-ip"
  resource_group_name = "Optum_rg1"
}