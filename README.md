# terraform-metal-project-ssh-key
Module for ssh key for Equinix Metal project


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_metal"></a> [metal](#requirement\_metal) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_metal"></a> [metal](#provider\_metal) | ~> 3.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.private_key_pem](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [metal_project_ssh_key.this](https://registry.terraform.io/providers/equinix/metal/latest/docs/resources/project_ssh_key) | resource |
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [tls_private_key.key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | project id | `string` | `""` | no |
| <a name="input_project_ssh_name"></a> [project\_ssh\_name](#input\_project\_ssh\_name) | project ssh name | `string` | `"project-ssh-name"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The unique ID of the key |
| <a name="output_name"></a> [name](#output\_name) | The name of SSH key |
| <a name="output_private_key_filename"></a> [private\_key\_filename](#output\_private\_key\_filename) | Private key filename |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | The public SSH key |