data "azurerm_storage_account" "azdoagents_tf" {
  name                = "itstaazdoagentstf"
  resource_group_name = "it-rg-azdoagents-setup"
}

data "azurerm_subscription" "current" {}