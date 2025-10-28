resource "azurerm_resource_group" "Optum_rg1" {
  for_each = var.rg_name
    name     = each.value.name
    location = each.value.location
    
}