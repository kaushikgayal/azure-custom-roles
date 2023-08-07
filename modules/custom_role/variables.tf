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