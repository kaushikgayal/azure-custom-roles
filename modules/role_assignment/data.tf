# Azure AD security groups
data "azuread_group" "groups" {
  for_each     = toset(var.aad_group_list) #aad group list
  display_name = each.value
}
