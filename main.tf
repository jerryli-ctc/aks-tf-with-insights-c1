terraform {
  # Use a recent version of Terraform
  required_version = ">= 0.13"

  # Map providers to thier sources, required in Terraform 13+
  required_providers {
    # Azure Active Directory 1.x
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 1.0"
    }
    # Azure Resource Manager 2.x
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    # Random 3.x
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider azurerm {
  # v2.x required "features" block
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_secret   = var.client_secret
  client_id       = var.client_id
  features {}
}

locals {
  aks_cluster_name    = "aks-${local.resource_group_name}"
  location            = "canadacentral"
  resource_group_name = "tf-with-insights"
}

resource "random_pet" "primary" {}

