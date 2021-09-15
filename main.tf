resource "mcaf_o365_alias" "default" {
  count = var.create_email_address ? 1 : 0
  alias = var.email
}

resource "mcaf_aws_account" "default" {
  name                     = var.account
  email                    = var.create_email_address ? mcaf_o365_alias.default.alias : var.email
  organizational_unit      = var.organizational_unit
  provisioned_product_name = var.provisioned_product_name

  sso {
    firstname = var.sso_firstname
    lastname  = var.sso_lastname
    email     = var.sso_email
  }
}
