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

variable "built-in-role_templates" {
  description = "Built in role predefined templates to use"
  type        = map(string)
  default = {
    "Contributor"             = "./templates/builtin-role/contributor.json"
    "Key Vault Administrator" = "./templates/builtin-role/key-vault-administrator.json"
  }
}

variable "tenant_id" {
  type    = string
  default = "6136803a-1c84-41a1-a46d-f3374b750208"
}


variable "aad_groups_definitions" {
  description = "Map of aad_groups_definitions object as defined in the aad_groups"
}

variable "aad_groups" {
  description = "AAD groups mapping to be used for custom role assignments"
  type = object({
    display_name            = string
    custom_role_assignments = list(string)
  })

  default = {
    display_name            = ""
    custom_role_assignments = []
  }
}

variable "scope_subscription" {
  type = string
}

variable "aad_group_list" {
  type    = list(string)
  default = [""]
}

variable "custom_role_list" {
  type    = list(string)
  default = [""]
}