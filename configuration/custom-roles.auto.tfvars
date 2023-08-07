
custom_role_definitions = {

  #Custom role #1
  custom-role-1 = {
    name        = "custom-role-1"
    description = "This is a custom role created via Terraform"
    scope       = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    permissions_actions = [
      "Microsoft.Authorization/roleAssignments/delete",
      "Microsoft.Authorization/roleAssignments/read",
      "Microsoft.Authorization/roleAssignments/write",
      "Microsoft.Authorization/roleDefinitions/write",
      "Microsoft.Authorization/roleDefinitions/delete"
    ]
    permissions_not_actions      = []
    permissions_data_actions     = []
    permissions_not_data_actions = []

    assignable_scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    ]
  }

  #Custom role #2

  custom-role-2 = {
    name        = "custom-role-2"
    scope       = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    description = "This is a custom role created via Terraform"

    permissions_actions = [
      "Microsoft.Authorization/roleAssignments/read",
    ]
    permissions_not_actions = [
      "Microsoft.Authorization/*/Delete",
      "Microsoft.Authorization/*/Write",
      "Microsoft.Authorization/elevateAccess/Action",
      "Microsoft.Blueprint/blueprintAssignments/write",
      "Microsoft.Blueprint/blueprintAssignments/delete",
      "Microsoft.Compute/galleries/share/action"
    ]
    permissions_data_actions = [
      "Microsoft.KeyVault/vaults/*"
    ]
    permissions_not_data_actions = []
    assignable_scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83" #it-azdo-private-agents
    ]
  }


  #Custom role #3

  custom-role-3 = {
    name        = "custom-role-3"
    scope       = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    description = "This is a custom role created via Terraform"
    permissions_actions = [
      "Microsoft.Authorization/roleAssignments/read",
    ]
    permissions_not_actions = [
      "Microsoft.Authorization/*/Delete",
      "Microsoft.Authorization/*/Write",
      "Microsoft.Authorization/elevateAccess/Action",
      "Microsoft.Blueprint/blueprintAssignments/write",
      "Microsoft.Blueprint/blueprintAssignments/delete",
      "Microsoft.Compute/galleries/share/action"
    ]
    permissions_data_actions     = []
    permissions_not_data_actions = []
    assignable_scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83" #it-azdo-private-agents
    ]
  }

}
