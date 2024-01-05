# Part 5 - Create an AKS Cluster using Terraform 

## Create workspace

	$ terraform workspace new ironclouder

## Manage the state in a remote state

First we created the storage account and the container using terraform and then, to manage the state remotely, we added the `backend` block.

According to terraform best pratices for modularization, we created separate files for each resource, as well as declaring the variables independently.





