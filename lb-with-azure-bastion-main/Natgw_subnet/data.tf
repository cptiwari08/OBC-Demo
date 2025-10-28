data "azurerm_subnet" "subnet" {
  name                 = "frontend_app"
  virtual_network_name = "OptumVnet"
  resource_group_name  = "Optum_rg1"
}
data "azurerm_nat_gateway" "natgw" {
  name                = "Optum-nat-gw"
  resource_group_name = "Optum_rg1"
}