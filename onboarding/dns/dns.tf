resource "fortios_system_dns" "system_dns" {
    primary = var.system_dns_primary
    secondary =var.system_dns_secondary
    
    protocol = var.system_dns_protocol
    
    server_hostname {
      hostname = var.server_hostname_hostname
    }
}