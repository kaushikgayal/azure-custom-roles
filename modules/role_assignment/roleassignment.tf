
# For built in roles provide role definition name
# example: role_definition_name = "Reader"

resource "azurerm_role_assignment" "assignment" {
  for_each = local.role_mappings

  scope              = local.scope_subscription
  role_definition_id = each.value.custom_role_definition_id
  principal_id       = each.value.principal_id
}