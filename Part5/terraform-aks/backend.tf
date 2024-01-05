terraform {
  backend "azurerm" {
    resource_group_name  = "ironcloudersgroupaks"
    storage_account_name = "saironclouders"
    container_name       = "tfstate"
    key                  = "terraform-aks/terraform.tfstate.d/dev/terraform.tfstate"
  }
}
