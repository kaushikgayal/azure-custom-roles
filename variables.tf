variable "custom_role_definitions" {
  description = "Map of custom_role_definition object as defined in the custom_role_definition"
}

variable "custom_role_definition" {
  type = object({
    name              = string
    description       = string
    scope             = string
    assignable_scopes = list(string)
    permissions = object({
      actions          = list(string)
      not_actions      = list(string)
      data_actions     = list(string)
      not_data_actions = list(string)
    })
  })

  default = {
    name              = ""
    description       = ""
    scope             = ""
    assignable_scopes = []
    permissions = {
      actions          = []
      not_actions      = ["*"]
      data_actions     = []
      not_data_actions = []
    }
  }
}