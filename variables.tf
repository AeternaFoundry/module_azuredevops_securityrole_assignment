variable "securityrole_assignments" {
  description = <<EOT
Map of securityrole_assignments, attributes below
Required:
    - identity_id
    - resource_id
    - role_name
    - scope
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    identity_id = string
    resource_id = string
    role_name   = string
    scope       = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.securityrole_assignments : (
        length(v.scope) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.securityrole_assignments : (
        length(v.resource_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.securityrole_assignments : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.identity_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.securityrole_assignments : (
        length(v.role_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

