variable "subscription_id" {
// description = "Subscription ID of the service Principle"
default = "40a77ffc-78cd-4ecb-befa-53aa25e071be"  
}

variable "client_id" {
//description = "Client ID of the Service Principal"
default = "feba6224-9e9f-4226-96e7-0363f5f38bcd"
}


variable "client_secret" {
// description = "Client Secret of the Service Principal"
default= "Ym-8Q~XJJTstnrX8mQgi1fKZ0uat5GguZCtnxchX"
}


variable "tenant_id" {
// description = "Tenant ID of the Azure AD"
default = "9209acaf-010d-4db9-a033-4d38d8290d92"
}
variable "rg_name" {
  default = "databricks-rg"
}
variable "rg_location" {
  default = "East US" 
}
variable "workspace" {
  default = "databricks-workspace"
}
variable "cluster_name" {
  default = "Shared Autoscaling"
}
variable "spark_version" {
  description = "Spark Runtime Version for databricks clusters"
  default     = "7.3.x-scala2.12"
}
variable "node_type" {
  default = "Standard_DS3_v2"
}
variable "min_workers" {
  default = 1
}
variable "max_workers" {
  default = 4
}