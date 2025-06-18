
terraform {
  required_providers {
    okta = {
      source = "okta/okta"
    }
  }
}
resource "okta_user" "example" {
  email              = var.user_email
  login              = var.user_login
  first_name         = var.user_firstname
  last_name          = var.user_lastname
}