resource "azuredevops_securityrole_assignment" "securityrole_assignments" {
  for_each = var.securityrole_assignments

  identity_id = each.value.identity_id
  resource_id = each.value.resource_id
  role_name   = each.value.role_name
  scope       = each.value.scope

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

