output "id" {
  value       = mcaf_aws_account.default.account_id
  description = "The AWS account ID"
}

output "name" {
  value       = mcaf_aws_account.default.name
  description = "The AWS account name"
}

output "okta_assume_policy" {
  value       = module.okta.assume_policy
  description = "The IAM policy you can attach to roles so they can be assumed by Okta"
}
