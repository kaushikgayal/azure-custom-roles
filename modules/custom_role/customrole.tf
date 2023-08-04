
resource "azurerm_role_definition" "custom_role" {
  for_each = local.role_definitions

  name = each.value.role_key

  description = each.value.description
  scope       = each.value.scope
  permissions {
    actions          = lookup(each.value.permissions, "actions", [])
    not_actions      = lookup(each.value.permissions, "not_actions", [])
    data_actions     = lookup(each.value.permissions, "data_actions", [])
    not_data_actions = lookup(each.value.permissions, "not_data_actions", [])
  }

  assignable_scopes = each.value.assignable_scopes

}