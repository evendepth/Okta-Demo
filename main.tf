module "okta_user" {
  source = "./modules/user_management"
  user_email = var.user_email
  user_login = var.user_login
  user_firstname = var.user_firstname
  user_lastname = var.user_lastname
}