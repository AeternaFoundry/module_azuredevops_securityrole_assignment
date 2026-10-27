output "securityrole_assignments_id" {
  description = "Map of id values across all securityrole_assignments, keyed the same as var.securityrole_assignments"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.id }
}
output "securityrole_assignments_identity_id" {
  description = "Map of identity_id values across all securityrole_assignments, keyed the same as var.securityrole_assignments"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.identity_id }
}
output "securityrole_assignments_resource_id" {
  description = "Map of resource_id values across all securityrole_assignments, keyed the same as var.securityrole_assignments"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.resource_id }
}
output "securityrole_assignments_role_name" {
  description = "Map of role_name values across all securityrole_assignments, keyed the same as var.securityrole_assignments"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.role_name }
}
output "securityrole_assignments_scope" {
  description = "Map of scope values across all securityrole_assignments, keyed the same as var.securityrole_assignments"
  value       = { for k, v in azuredevops_securityrole_assignment.securityrole_assignments : k => v.scope }
}

