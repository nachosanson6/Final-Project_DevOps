# Part 6 – Deploy the whole application on AKS (Azure Kubernetes Services) 

Prior to creating the yaml files (kubectl create -f ...) we have to connect to our Azure Kubernetes Service, going to azure portal, selecting the kubernetes service and selecting "get started" => "connect via Cloud Shell" => then the second option "Azure CLI" => used the commands =

        $ az login
        $ az account set --subscription <subscriptionID>
        $ az aks get-credentials --resource-group <resourceGroupName> --name <aksName>



After succesfully connecting to AKS, we created all necessary files, using command 
        
        $ kubectl create -f <file-name>

to create the services in Azure.



