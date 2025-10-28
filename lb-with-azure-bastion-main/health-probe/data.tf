data "azurerm_lb" "lb" {
    name                = "Optum-frontend-lb-1"
    resource_group_name = "Optum_rg1"
}