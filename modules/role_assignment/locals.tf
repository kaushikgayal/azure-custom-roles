locals {
  scope_subscription = var.scope_subscription
  aad_groups_definitions = {
    for key, aad_groups in var.aad_groups_definitions : key => merge(var.aad_groups, aad_groups)
  }

  role_assignments = {
    for aad_groups in
    flatten(
      [
        for key, role in local.aad_groups_definitions : {
          display_name            = role.display_name
          role_id                 = role.role_id
          custom_role_assignments = role.custom_role_assignments
          assignment_key          = key
        }
      ]
    ) : aad_groups.assignment_key => aad_groups
  }

  role_mappings = {
    for role_assignments in
    distinct(flatten([
      for each_mapping in local.role_assignments : [
        for id in each_mapping.custom_role_assignments : {
          custom_role_definition_id = id
          principal_id              = each_mapping.role_id
        }
      ]
    ])) : role_assignments.custom_role_definition_id => role_assignments
  }

}