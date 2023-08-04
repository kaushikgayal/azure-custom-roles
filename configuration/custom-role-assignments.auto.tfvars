scope_subscription = "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"

aad_groups_definitions = {
  # Non PROD Admin
  nonprodadmin = {
    display_name = "NonProd-Admins"
    role_id      = "68aae39e-b5a8-4969-95b3-1d6fedb25b3c"
    custom_role_assignments = [
      "custom-role-1"
    ]
  }
  # PROD Admin
  prodadmin = {
    display_name = "Prod-Admin"
    role_id      = "ce286f41-0901-496a-8e6c-f64bc155bf01"
    custom_role_assignments = [
      "custom-role-2",
      "custom-role-3"
    ]
  }
}