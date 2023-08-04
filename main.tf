module "aad_custom_role_definition" {
  source = "./modules/custom_role"

  custom_role_definitions = local.custom_role_definitions
}

module "aad_role_assignment" {
  source                 = "./modules/role_assignment"
  aad_groups_definitions = local.aad_groups_definitions
  scope_subscription     = local.scope_subscription
}