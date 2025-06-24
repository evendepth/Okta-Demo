module "okta_user" {
  source = "./modules/user_management"
  user_email = var.user_email
  user_login = var.user_login
  user_firstname = var.user_firstname
  user_lastname = var.user_lastname
}

# Create Group
module "create_group" {
  source      = "./modules/group_management"
  group_name  = var.group_name
  group_description = var.group_description
  users_group_membership = [module.okta_user.okta_user_id]
}
