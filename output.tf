output "public_ip_addresses" {
  value = module.autoscaling_group.public_ip_addresses
}

output "private_ip_addresses" {
  value = module.autoscaling_group.private_ip_addresses
}
