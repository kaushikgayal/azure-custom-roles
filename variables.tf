variable "custom_role_definitions" {
  description = "Map of custom_role_definition object as defined in the custom_role_definition"
}

variable "custom_role_definition" {
  type = object({
    name                         = string
    description                  = string
    scope                        = string
    assignable_scopes            = list(string)
    permissions_actions          = list(string)
    permissions_not_actions      = list(string)
    permissions_data_actions     = list(string)
    permissions_not_data_actions = list(string)
  })

  default = {
    name                         = ""
    description                  = ""
    scope                        = ""
    assignable_scopes            = []
    permissions_actions          = []
    permissions_not_actions      = ["*"]
    permissions_data_actions     = []
    permissions_not_data_actions = []
  }
}

variable "tenant_id" {
  type    = string
  default = "6136803a-1c84-41a1-a46d-f3374b750208"
}

variable "aad_group_list" {
  type    = list(string)
  default = [""]
}

variable "role_mappings" {
  description = "Map of role_mapping object as defined in the role_mappings"
}

variable "role_mapping" {
  description = "AAD groups mapping to be used for custom role assignments and built in roles assignments"
  type = object({
    group_name = string
    roles      = list(string)
    scopes     = list(string)
  })

  default = {
    group_name = ""
    roles      = []
    scopes     = []
  }
}