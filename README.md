# terraform-aws-mcaf-account

MCAF terraform module to create an AWS account using Control Tower's Account Factory.

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| mcaf | >= 0.4.2 |

## Providers

| Name | Version |
|------|---------|
| mcaf | >= 0.4.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account | The name of the account | `string` | n/a | yes |
| email | Email address of the account | `string` | n/a | yes |
| organizational\_unit | Organization unit to create the account in | `string` | n/a | yes |
| sso\_email | The email address of the Control Tower SSO account | `string` | n/a | yes |
| provisioned\_product\_name | A custom name for the provisioned product | `string` | `null` | no |
| sso\_firstname | The first name of the Control Tower SSO account | `string` | `"AWS Control Tower"` | no |
| sso\_lastname | The last name of the Control Tower SSO account | `string` | `"Admin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The AWS account ID |
| name | The AWS account name |

<!--- END_TF_DOCS --->

## License

**Copyright:** Schuberg Philis

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
