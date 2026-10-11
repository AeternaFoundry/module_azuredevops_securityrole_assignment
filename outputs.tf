output "securityrole_assignments_id" {
  description = "Map of id values across all securityrole_assignments, keyed the same as var.securityrole_assignments except keys with no id are omitted"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityrole_assignments_identity_id" {
  description = "Map of identity_id values across all securityrole_assignments, keyed the same as var.securityrole_assignments except keys with no identity_id are omitted"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.identity_id if v.identity_id != null && length(v.identity_id) > 0 }
}
output "securityrole_assignments_resource_id" {
  description = "Map of resource_id values across all securityrole_assignments, keyed the same as var.securityrole_assignments except keys with no resource_id are omitted"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "securityrole_assignments_role_name" {
  description = "Map of role_name values across all securityrole_assignments, keyed the same as var.securityrole_assignments except keys with no role_name are omitted"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}
output "securityrole_assignments_scope" {
  description = "Map of scope values across all securityrole_assignments, keyed the same as var.securityrole_assignments except keys with no scope are omitted"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

