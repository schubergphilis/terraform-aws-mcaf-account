resource "mcaf_aws_account" "default" {
  name                     = var.account
  email                    = var.email
  organizational_unit      = var.organizational_unit
  provisioned_product_name = var.provisioned_product_name

  sso {
    firstname = var.sso_firstname
    lastname  = var.sso_lastname
    email     = var.sso_email
  }
}
