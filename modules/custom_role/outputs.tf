output "custom_role_definitions" {
  value = local.custom_role_definitions
}

output "custom_role" {
  value = azurerm_role_definition.custom_role
}