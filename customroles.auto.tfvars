custom_role_definitions = {

  #Custom role #2
  custom-role-1 = {
    name        = "custom-role-1"
    description = "Provide addition permissions on top of built-in Contributor role to manage landing zones deployment"
    scope       = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    permissions = {
      actions = [
        "Microsoft.Authorization/roleAssignments/delete",
        "Microsoft.Authorization/roleAssignments/read",
        "Microsoft.Authorization/roleAssignments/write",
        "Microsoft.Authorization/roleDefinitions/write",
        "Microsoft.Authorization/roleDefinitions/delete"
      ]
    }

    assignable_scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    ]
  }

  #Custom role #2

  custom-role-2 = {
    name  = "custom-role-2"
    scope = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    permissions = {
      actions = [
        "Microsoft.Authorization/roleAssignments/read",
      ]
    }

    assignable_scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83" #it-azdo-private-agents
    ]
  }
}