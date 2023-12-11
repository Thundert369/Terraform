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

resource "azurerm_databricks_user" "example_user" {
  workspace_id = azurerm_databricks_workspace.example.id
  user_name    = "newuser@example.com"
  display_name = "New User"

  group_membership {
    group_id = azurerm_databricks_group.example_group.id
    role     = "MEMBER"  # Change to "ADMIN" if the user should be an admin
  }
}

//data "databricks_node_type" "smallest" {
  //local_disk = true
//}

//data "databricks_spark_version" "latest_lts" {
  //long_term_support = true
//}

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

//resource "azurerm_databricks_workspace_access" "example" {
 // workspace_name          = azurerm_databricks_workspace.example.name
  //resource_group_name     = azurerm_resource_group.databricks_rg.name
  // principal_id            = "8abc6c94-4264-49e7-8f72-6aa7b32f497d"
  //role_name               = "Contributor"
// } 