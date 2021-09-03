resource "azuread_group" "aks_administrators" {
  display_name        = "AKS-cluster-admins"
  description = "Kubernetes administrators for the ${local.aks_cluster_name} cluster."
}
