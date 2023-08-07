module "aad_custom_role_definition" {
  source = "./modules/custom_role"

  custom_role_definitions = local.custom_role_definitions
}

module "aad_role_assignment" {
  source         = "./modules/role_assignment"
  role_mappings  = local.role_mappings
  aad_group_list = local.aad_group_list
  custom_role    = module.aad_custom_role_definition.custom_role
  depends_on     = [module.aad_custom_role_definition]
}