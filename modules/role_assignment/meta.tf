terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread" #2.15.0
      version = ">= 2.15.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm" #3.59.0
      version = ">= 3.59.0"
    }
  }
}