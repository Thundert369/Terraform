terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
      version = "1.5.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
    subscription_id = var.subscription_id
    client_id       = var.client_id  
    client_secret   = var.client_secret 
    tenant_id       = var.tenant_id    
    features {}
}

//azread = {
  //      source  = "hashicorp/azuread"
    //  version = "~> 2.15.0"
    //}
//provider "azread" { 
  //  client_id   = "feba6224-9e9f-4226-96e7-0363f5f38bcd"
//client_secret   = "6583906a-346d-4d3f-970c-e227b5ede102"
//tenant_id       = "9209acaf-010d-4db9-a033-4d38d8290d92"
//}