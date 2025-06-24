terraform {
  required_providers {
    okta = {
      source = "okta/okta"
    }
  }
}
resource "okta_group" "example" {
  name        = var.group_name
  description = var.group_description
}

# Assign User to Group
resource "okta_group_memberships" "assign_user" {
  group_id = okta_group.example.id
  users    = var.users_group_membership
}
