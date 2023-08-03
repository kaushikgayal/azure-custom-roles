# The configuration for the `remote` backend.
terraform {
  backend "azurerm" {
    resource_group_name  = "it-rg-azdoagents-setup"
    storage_account_name = "itstaazdoagentstf"
    container_name       = "tfstate"
    key                  = "customroles.tfstate"
  }
  required_version = ">= 1.2.0"
}