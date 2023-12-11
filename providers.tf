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
