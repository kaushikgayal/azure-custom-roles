scope_subscription = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"

aad_groups_definitions = {
  # Non PROD Admin
  nonprodadmin = {
    display_name = "NonProd-Admins"
    custom_role_assignments = [
      "custom-role-1"
    ]
  }
  # PROD Admin
  prodadmin = {
    display_name = "Prod-Admin"
    custom_role_assignments = [
      "custom-role-2",
      "custom-role-3"
    ]
  }
}