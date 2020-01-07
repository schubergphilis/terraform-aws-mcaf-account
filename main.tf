resource "mcaf_o365_alias" "default" {
  alias = var.email

  lifecycle {
    prevent_destroy = true
  }
}

resource "mcaf_aws_account" "default" {
  name                     = var.account
  email                    = mcaf_o365_alias.default.alias
  organizational_unit      = var.organizational_unit
  provisioned_product_name = var.provisioned_product_name

  sso {
    firstname = var.sso_firstname
    lastname  = var.sso_lastname
    email     = var.sso_email
  }

  lifecycle {
    prevent_destroy = true
  }
}
