
variable "aad_groups_definitions" {
  description = "Map of aad_groups_definitions object as defined in the aad_groups"
}

variable "aad_groups" {
  description = "AAD groups mapping to be used for custom role assignments"
  type = object({
    display_name            = string
    role_id                 = string
    custom_role_assignments = list(string)
  })

  default = {
    display_name            = ""
    role_id                 = ""
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
