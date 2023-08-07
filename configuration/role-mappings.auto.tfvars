role_mappings = {
  # Non PROD Admin
  nonprodadmin = {
    group_name = "NonProd-Admins"
    roles = [
      "custom-role-1",
      "Contributor"
    ]
    scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    ]
  }
  # PROD Admin
  prodadmin = {
    group_name = "Prod-Admin"
    roles = [
      "custom-role-2",
      "custom-role-3",
      "Log Analytics Contributor"
    ]
    scopes = [
      "/subscriptions/fcd22bc4-a57d-4409-882d-54bb2dce4e83"
    ]
  }
}