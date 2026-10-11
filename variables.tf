variable "policy_profile_enrollments" {
  description = <<EOT
Map of policy_profile_enrollments, attributes below
Required:
    - name
Optional:
    - status
EOT

  type = map(object({
    name   = string
    status = optional(string)
  }))
}

