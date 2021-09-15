variable "account" {
  type        = string
  description = "The name of the account"
}

variable "create_email_address" {
  type        = bool
  default     = true
  description = "Controls the creation of the O365 email address"
}

variable "email" {
  type        = string
  description = "Email address of the account"
}

variable "organizational_unit" {
  type        = string
  description = "Organization unit to create the account in"
}

variable "provisioned_product_name" {
  type        = string
  default     = null
  description = "A custom name for the provisioned product"
}

variable "sso_firstname" {
  type        = string
  default     = "AWS Control Tower"
  description = "The first name of the Control Tower SSO account"
}

variable "sso_lastname" {
  type        = string
  default     = "Admin"
  description = "The last name of the Control Tower SSO account"
}

variable "sso_email" {
  type        = string
  description = "The email address of the Control Tower SSO account"
}
