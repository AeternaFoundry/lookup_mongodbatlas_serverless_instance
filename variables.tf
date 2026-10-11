variable "serverless_instance_lookup" {
  description = <<EOT
Map of serverless_instance_lookup, attributes below
Required:
    - name
    - project_id
Optional:
    - auto_indexing
    - continuous_backup_enabled
    - state_name
EOT

  type = map(object({
    name                      = string
    project_id                = string
    auto_indexing             = optional(bool)
    continuous_backup_enabled = optional(bool)
    state_name                = optional(string)
  }))
}

