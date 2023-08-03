terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" #3.59.0
      version = ">= 3.59.0"
    }
    azuread = {
      source  = "hashicorp/azuread" #2.39.0
      version = ">= 2.39.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "azurerm" {
  features {}
  use_oidc = true
}

# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = var.tenant_id
}
