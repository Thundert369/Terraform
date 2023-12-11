resource "azurerm_resource_group" "databricks_rg" {     
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_databricks_workspace" "example" {
  name                = var.workspace
  resource_group_name = azurerm_resource_group.databricks_rg.name
  location            = azurerm_resource_group.databricks_rg.location
  sku                 = "trial"
}
resource "databricks_cluster" "shared_autoscaling" {
  cluster_name            = var.cluster_name
  spark_version           = var.spark_version
  node_type_id            = var.node_type
  autotermination_minutes = 20
  autoscale {
    min_workers = var.min_workers
    max_workers = var.max_workers
  }
}   
