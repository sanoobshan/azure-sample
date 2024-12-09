provider "azurerm" {
    features {}  

  subscription_id = "8204b7b3-f73c-4b85-95ac-d9ae27a9e877"
  tenant_id       = "a9c978c9-5d02-43be-b6de-d456c9a34a0f"
}

resource "azurerm_kubernetes_cluster" "samplek8" {
    name = "k8s_sample"
    location = "East US" 
    resource_group_name = "azure_k8s"
    dns_prefix = "aksprefix123"

    default_node_pool {
        name = "default"
        node_count = 2
        vm_size = "Standard_DS2_V2"
    }

    identity {
        type = "SystemAssigned"
    }
}

