output "iam_group_memberships_id" {
  description = "Map of id values across all iam_group_memberships, keyed the same as var.iam_group_memberships"
  value       = { for k, v in aws_iam_group_membership.iam_group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_group_memberships_group" {
  description = "Map of group values across all iam_group_memberships, keyed the same as var.iam_group_memberships"
  value       = { for k, v in aws_iam_group_membership.iam_group_memberships : k => v.group if v.group != null && length(v.group) > 0 }
}
output "iam_group_memberships_name" {
  description = "Map of name values across all iam_group_memberships, keyed the same as var.iam_group_memberships"
  value       = { for k, v in aws_iam_group_membership.iam_group_memberships : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_group_memberships_users" {
  description = "Map of users values across all iam_group_memberships, keyed the same as var.iam_group_memberships"
  value       = { for k, v in aws_iam_group_membership.iam_group_memberships : k => v.users if v.users != null && length(v.users) > 0 }
}

