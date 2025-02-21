data "http" "get_snmp_details" {
  url = "https://${var.fortigate_ip}/api/v2/cmdb/system.snmp/user/"
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

output "snmp_details" {
  value = jsondecode(data.http.get_snmp_details.response_body).results
}

