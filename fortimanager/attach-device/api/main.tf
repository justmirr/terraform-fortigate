resource "fortios_system_centralmanagement" "add_fortimanager" {
  allow_monitor                 = var.add_fortimanager_allow_monitor
  allow_push_configuration      = var.add_fortimanager_allow_push_configuration
  allow_push_firmware           = var.add_fortimanager_allow_push_firmware
  allow_remote_firmware_upgrade = var.add_fortimanager_allow_remote_firmware_upgrade
  mode                          = var.add_fortimanager_mode
  type                          = var.add_fortimanager_type
  fmg                           = var.fortimanager_ip
  vdom                          = var.fortigate_vdom
}

data "http" "add_fortigate_device" {
  depends_on = [ fortios_system_centralmanagement.add_fortimanager ]
  url    = "https://${var.fortimanager_ip}/jsonrpc"
  method = "POST"
  insecure = true
  request_headers = {
    Content-Type  = "application/json"
    Authorization = "Bearer ${var.fortimanager_token}"
  }
  request_body = jsonencode({
    id     = 3
    method = "exec"
    params = [
      {
        data = {
          adom   = var.fortimanager_adom
          device = {
            adm_usr       = var.fortigate_admin
            adm_pass      = var.fortigate_password
            ip            = var.fortigate_ip
            "device action" = "promote_unreg"
            name          = var.fortigate_device_name
            mgmt_mode     = var.fortimanager_mgmt_mode
          }
          flags = ["create_task"]
        }
        url = "/dvm/cmd/add/device"
      }
    ]
  })
}

output "add_device_response" {
  value = jsondecode(data.http.add_fortigate_device.response_body)
}