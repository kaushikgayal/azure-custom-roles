
output "custom_role_definitions" {
  value = module.aad_custom_role_definition.custom_role_definitions
}

output "custom_role" {
  value = module.aad_custom_role_definition.custom_role
}

output "role_output" {
  value = module.aad_role_assignment.role_output
}

output "role_output2" {
  value = module.aad_role_assignment.role_output2
}