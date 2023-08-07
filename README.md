# Azure Custom Roles - Automation using Terraform

Howdy there! This project contains **Terraform IAC code** that helps clients quickly create **Azure custom roles** using best practices of Terraform.

# When to create a custom role?
The best practise is to use as less custom roles as possible.
Azure provides a large number built in roles (both General and Job Specific) to choose from.
[Azure Built-in Roles](https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles)

# Scope definition
Scope is the set of resources that the access applies to. In Azure, you can specify a scope at four levels: management group, subscription, resource group, and resource. Scopes are structured in a parent-child relationship. Each level of hierarchy makes the scope more specific. You can assign roles at any of these levels of scope. The level you select determines how widely the role is applied. Lower levels inherit role permissions from higher levels.

![Different Scopes available](https://learn.microsoft.com/en-us/azure/role-based-access-control/media/shared/rbac-scope.png)

Scope for a role assignment

When you assign a role at a parent scope, those permissions are inherited to the child scopes. For example:

If you assign the Reader role to a user at the management group scope, that user can read everything in all subscriptions in the management group.
If you assign the Billing Reader role to a group at the subscription scope, the members of that group can read billing data for every resource group and resource in the subscription.
If you assign the Contributor role to an application at the resource group scope, it can manage resources of all types in that resource group, but not other resource groups in the subscription.
It's a best practice to grant security principals the least privilege they need to perform their job. Avoid assigning broader roles at broader scopes even if it initially seems more convenient. By limiting roles and scopes, you limit what resources are at risk if the security principal is ever compromised.

# Access required to run this code
To assign roles, you must be signed in with a user/service principle that is assigned a role that has role assignments write permission, such as Owner or User Access Administrator at the scope you are trying to assign the role. Similarly, to remove a role assignment, you must have the role assignments delete permission.

Microsoft.Authorization/roleAssignments/write
Microsoft.Authorization/roleAssignments/delete

# Limitations
You can have up to 4000 role assignments in each subscription. This limit includes role assignments at the subscription, resource group, and resource scopes. You can have up to 500 role assignments in each management group.

# How to run this project in local
1. Create an .env file in root folder providing below values:
    - ARM_CLIENT_ID
    - ARM_CLIENT_SECRET
    - ARM_SUBSCRIPTION_ID
    - ARM_TENANT_ID
2. Change the values (if you wish) of inputs in cofiguration folder.
3. Execute `make plan` to get the plan
4. Execute `make apply` to apply the plan after review