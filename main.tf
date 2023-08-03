module "aad_custom_role_definition" {
  source = "./modules/custom_role"

  custom_role_definitions = local.custom_role_definitions
}