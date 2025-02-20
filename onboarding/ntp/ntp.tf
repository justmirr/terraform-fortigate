resource "fortios_system_global" "system_global" {
    timezone = var.system_global_timezone
}

resource "fortios_system_ntp" "system_ntp" {
    ntpsync = var.system_ntp_ntpsync
    type = var.system_ntp_type
    syncinterval = var.system_ntp_syncinterval
    ntpserver {
        id = var.ntpserver_id
        server = var.ntpserver_server
        ip_type = var.ntpserver_ip_type
        interface = var.ntpserver_interface
   }
}