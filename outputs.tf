output "external_ip_addr" {
  value       = scaleway_instance_ip.dev_ip.address
  description = "External DEV IP"
}
