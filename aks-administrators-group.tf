data "azuread_group" "aks_administrators" {
  display_name        = "AKS-cluster-admins"
  # import Kubernetes administrators for the AKS cluster
}
