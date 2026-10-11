variable "dialogflow_cx_environments" {
  description = <<EOT
Map of dialogflow_cx_environments, attributes below
Required:
    - display_name
    - version_configs (block):
        - version (required)
Optional:
    - deletion_policy
    - description
    - parent
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    deletion_policy = optional(string)
    description     = optional(string)
    parent          = optional(string)
    version_configs = list(object({
      version = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_environments : (
        length(v.version_configs) >= 1
      )
    ])
    error_message = "Each version_configs list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_environments : (
        length(v.display_name) >= 0 && length(v.display_name) <= 64
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_environments : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 500)
      )
    ])
    error_message = "must be between 0 and 500 characters"
  }
}

