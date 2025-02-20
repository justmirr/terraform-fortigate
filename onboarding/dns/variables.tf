variable "fortigate_ip" {
  description = "IP of the fortigate device"
  type = string
}
variable "bearer_token" {
  description = "API token for the fortigate device"
  type = string
}
variable "system_dns_primary" {
  description = "Primary DNS server"
  type = string
}
variable "system_dns_secondary" {
  description = "Secondary DNS server"
  type = string
}
variable "system_dns_protocol" {
  description = "DNS protocol (cleartext, dot, doh)"
  type = string
}
variable "server_hostname_hostname" {
  description = "Hostname to resolve"
  type = string
}