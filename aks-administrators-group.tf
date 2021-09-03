resource "azuread_group" "aks_administrators" {
  name        = "AKS-cluster-admins"
  description = "Kubernetes administrators for the ${local.aks_cluster_name} cluster."
}
