variable "client_id" {
  default = "6342e3d9-d11e-42e9-bc2e-761a22157390" 
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "client_secret" { 
  default = "" 
  description = "AKS Cluster service principal secret, stored in Terraform Cloud Variables"
}

//General
variable "subscription_id" { default = "efe379ac-bba6-4a98-87af-56c784355dc5" }
variable "tenant_id" { default = "bd6704ff-1437-477c-9ac9-c30d6f5133c5" }
variable "location" { default = "Canada Central" }
variable "environment" { default = "sandbox" }