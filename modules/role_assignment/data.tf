# Azure AD security groups
data "azuread_group" "groups" {
  for_each     = toset(var.aad_group_list) #aad group list
  display_name = each.value
}

# Custom Roles
data "azurerm_role_definition" "custom_role" {
  for_each = toset(var.custom_role_list) #custom role list
  name     = each.value
  scope    = local.scope_subscription
}
