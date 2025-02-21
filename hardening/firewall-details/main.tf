data "http" "get_firewall_details" {
  url = "https://${var.fortigate_ip}/api/v2/monitor/system/status"
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

data "fortios_system_global" "get_firewall_ip" {}

output "firewall_details" {
  value = jsondecode(data.http.get_firewall_details.response_body)
}

output "firewall_ip" {
  value = data.fortios_system_global.get_firewall_ip.management_ip
}