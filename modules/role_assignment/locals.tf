locals {
  mapping = flatten([
    for i, role_mapping in var.role_mappings : [
      for j, scope in role_mapping.scopes : [
        for k, role in role_mapping.roles : {
          scope                = scope
          role_definition_name = role
          principal_name       = role_mapping.group_name
          role_type            = can(regex("^custom.*$", role)) ? "custom" : "built_in"
        }
      ]
    ]
  ])
}