variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account."
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
  default     = "tfstate"
}

variable "aks_cluster_name" {
  description = "The name of the AKS Cluster."
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS Cluster."
  type        = string
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS Cluster."
  type        = number
  default     = 3
}

variable "aks_vm_size" {
  description = "Size of the VMs in the AKS node pool."
  type        = string
  default     = "Standard_DS2_v2"
}
