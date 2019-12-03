data "aws_caller_identity" "current" {}

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

provider "aws" {
  alias  = "inception"
  region = var.region
  assume_role {
    role_arn = "arn:aws:iam::${mcaf_aws_account.default.account_id}:role/AWSControlTowerExecution"
  }
}

module "okta" {
  providers  = { aws = aws.inception }
  source     = "github.com/schubergphilis/terraform-aws-mcaf-okta?ref=v0.1.3"
  name       = var.okta_role_name
  account_id = data.aws_caller_identity.current.account_id
  metadata   = var.metadata
  tags       = var.tags
}
