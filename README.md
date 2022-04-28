# tf-module-network

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.14.0 |
| openstack | ~> 1.35.0 |

## Providers

| Name | Version |
|------|---------|
| openstack | ~> 1.35.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [openstack_networking_network_v2](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_network_v2) |
| [openstack_networking_router_interface_v2](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_router_interface_v2) |
| [openstack_networking_router_v2](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_router_v2) |
| [openstack_networking_subnet_v2](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_subnet_v2) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | Name of the cluster | `any` | n/a | yes |
| external\_network\_id | The ID of the external network providing ingress / egress | `string` | `""` | no |
| subnet\_range | Private IP space to be used in CIDR format | `string` | `"172.31.0.0/24"` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_id | UUID of the network |
| router\_id | UUID of the router |
| subnet\_id | UUID of the subnet |
