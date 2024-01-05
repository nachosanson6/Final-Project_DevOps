variable "cluster_name" {
  description = "The name of the AKS Cluster"
  type        = string
}

variable "location" {
  description = "The location/region of the AKS Cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS Cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS Cluster"
  type        = number
  default     = 3
}

variable "vm_size" {
  description = "Size of the VMs in the node pool"
  type        = string
  default     = "Standard_DS2_v2"
}