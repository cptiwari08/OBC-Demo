# terraform {
#   required_version = ">= 1.0.0"
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "4.47.0"
#     }
#   }
# }
# Terraform Provider Block
provider "azurerm" {
  features {}
  subscription_id = "36475e8d-5c5f-45b4-9ff3-bdac01b62311"
}
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "Optum_rg"
#     storage_account_name = "Optumstg321"
#     container_name       = "Optumcnt321"
#     key                  = "terraform.tfstate"

#   }
#  }
