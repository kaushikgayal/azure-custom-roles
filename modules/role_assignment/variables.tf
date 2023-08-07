
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

variable "aad_group_list" {
  type    = list(string)
  default = [""]
}

variable "custom_role" {
  description = "Output from custom role creation"
}
