output "public_ip_addresses" {
  value = aws_instance.nodes.*.public_ip
}

output "private_ip_addresses" {
  value = aws_instance.nodes.*.private_ip
}
