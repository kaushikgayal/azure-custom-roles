
output "custom_role_definitions" {
  value = module.aad_custom_role_definition.custom_role_definitions
}

output "custom_role" {
  value = module.aad_custom_role_definition.custom_role
}