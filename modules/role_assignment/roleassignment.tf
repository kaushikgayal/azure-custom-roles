
resource "azurerm_role_assignment" "role_assignment" {
  for_each = { for key, item in local.mapping : key => item }

  scope                = each.value.scope
  role_definition_name = each.value.role_type == "built_in" ? each.value.role_definition_name : null
  role_definition_id   = each.value.role_type == "custom" ? var.custom_role[each.value.role_definition_name].role_definition_resource_id : null
  principal_id         = data.azuread_group.groups[each.value.principal_name].id
}