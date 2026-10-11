output "policy_profile_enrollments_id" {
  description = "Map of id values across all policy_profile_enrollments, keyed the same as var.policy_profile_enrollments except keys with no id are omitted"
  value       = { for k, v in okta_policy_profile_enrollment.policy_profile_enrollments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policy_profile_enrollments_name" {
  description = "Map of name values across all policy_profile_enrollments, keyed the same as var.policy_profile_enrollments except keys with no name are omitted"
  value       = { for k, v in okta_policy_profile_enrollment.policy_profile_enrollments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "policy_profile_enrollments_status" {
  description = "Map of status values across all policy_profile_enrollments, keyed the same as var.policy_profile_enrollments except keys with no status are omitted"
  value       = { for k, v in okta_policy_profile_enrollment.policy_profile_enrollments : k => v.status if v.status != null && length(v.status) > 0 }
}

