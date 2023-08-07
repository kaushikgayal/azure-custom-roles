output "custom_role" {
  value = module.aad_custom_role_definition.custom_role
}

output "role_mapping" {
  value = module.aad_role_assignment.role_mapping
}