output "server_ip" {
  value = hcloud_server.vm.ipv4_address
}

output "server_name" {
  value = hcloud_server.vm.name
}