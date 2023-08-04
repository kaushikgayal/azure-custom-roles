
# For built in roles provide role definition name
# example: role_definition_name = "Reader"

resource "azurerm_role_assignment" "assignment" {
  for_each = local.role_mappings

  scope              = local.scope_subscription
  role_definition_id = data.azurerm_role_definition.custom_role[each.value.custom_role_definition_name].id
  principal_id       = data.azuread_group.groups[each.value.group_key].object_id
}