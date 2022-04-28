terraform {
  required_version = ">= 1.1.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.47.0"
    }
  }
}

resource "openstack_networking_network_v2" "network" {
  name = var.cluster_name
}

resource "openstack_networking_subnet_v2" "subnet" {
  name       = var.cluster_name
  network_id = openstack_networking_network_v2.network.id
  cidr       = var.subnet_range
  ip_version = 4
}

resource "openstack_networking_router_v2" "router" {
  name                = var.cluster_name
  admin_state_up      = true
  external_network_id = var.external_network_id
}

resource "openstack_networking_router_interface_v2" "router_interface" {
  router_id = openstack_networking_router_v2.router.id
  subnet_id = openstack_networking_subnet_v2.subnet.id
}
