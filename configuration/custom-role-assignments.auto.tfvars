scope_subscription = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"

aad_groups_definitions = {
  # Non PROD Admin
  nonprodadmin = {
    display_name = "NonProd-Admins"
    role_id      = "68aae39e-b5a8-4969-95b3-1d6fedb25b3c"
    custom_role_assignments = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83/providers/Microsoft.Authorization/roleDefinitions/6c47c508-6c0c-9b51-681d-fc01bdf99ab2" # "custom-role-1"
    ]
  }
  # PROD Admin
  prodadmin = {
    display_name = "Prod-Admin"
    role_id      = "ce286f41-0901-496a-8e6c-f64bc155bf01"
    custom_role_assignments = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83/providers/Microsoft.Authorization/roleDefinitions/21b48f7f-8620-81a6-ab9d-ac8fb47a220a", #"custom-role-2",
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83/providers/Microsoft.Authorization/roleDefinitions/ed875db2-dcd9-3c7d-eed3-36e073024193"  #"custom-role-3"
    ]
  }
}