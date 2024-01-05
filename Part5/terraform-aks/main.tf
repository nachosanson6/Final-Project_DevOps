terraform {
  required_providers {
    azurerm = {
      version = "~> 2.0"
      source  = "hashicorp/azurerm"
    }
  }

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "aks_cluster" {
  source = "./modules/aks"

  cluster_name        = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.aks_dns_prefix
  node_count          = var.aks_node_count
  vm_size             = var.aks_vm_size
}

output "aks_cluster_id" {
  value = module.aks_cluster.aks_cluster_id
}