output "network_id" {
  description = "UUID of the network"
  value       = openstack_networking_network_v2.network.id
}

output "subnet_id" {
  description = "UUID of the subnet"
  value       = openstack_networking_subnet_v2.subnet.id
}

output "router_id" {
  description = "UUID of the router"
  value       = openstack_networking_router_v2.router.id
}
