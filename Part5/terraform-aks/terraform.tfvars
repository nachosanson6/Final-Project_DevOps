
resource_group_name      = "ironcloudersgroupaks"
location                 = "East US"
storage_account_name     = "saironclouders"
account_tier             = "Standard"
account_replication_type = "LRS"
container_name           = "tfstate"
aks_cluster_name         = "ironclouderscluster"
aks_dns_prefix           = "dnsironclouders"
aks_node_count           = 3
aks_vm_size              = "Standard_DS2_v2"

