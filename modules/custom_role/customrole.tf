resource "azurerm_role_definition" "custom_role" {
  for_each = { for key, item in var.custom_role_definitions : item.name => item }

  name        = each.value.name
  scope       = each.value.scope
  description = each.value.description

  permissions {
    actions          = tolist("${[for item in each.value.permissions_actions : item]}")
    not_actions      = tolist("${[for item in each.value.permissions_not_actions : item]}")
    data_actions     = tolist("${[for item in each.value.permissions_data_actions : item]}")
    not_data_actions = tolist("${[for item in each.value.permissions_not_data_actions : item]}")
  }

  assignable_scopes = tolist("${[for item in each.value.assignable_scopes : item]}")
}
