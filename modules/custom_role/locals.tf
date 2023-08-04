locals {

  custom_role_definitions = {
    for key, custom_role_definition in var.custom_role_definitions : key => merge(var.custom_role_definition, custom_role_definition)
  }

  role_definitions = {
    for custom_role_definition in
    flatten(
      [
        for key, role in local.custom_role_definitions : {
          name              = role.name
          description       = role.description
          permissions       = role.permissions
          scope             = role.scope
          assignable_scopes = role.assignable_scopes
          role_key          = key
        }
      ]
    ) : custom_role_definition.role_key => custom_role_definition
  }
}