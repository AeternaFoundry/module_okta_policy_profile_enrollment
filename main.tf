resource "okta_policy_profile_enrollment" "policy_profile_enrollments" {
  for_each = var.policy_profile_enrollments

  name   = each.value.name
  status = each.value.status
}

