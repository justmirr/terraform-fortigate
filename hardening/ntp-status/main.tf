data "http" "get_ntp_details" {
  url = "https://${var.fortigate_ip}/api/v2/monitor/system/ntp/status"
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

output "ntp_details" {
    value = jsondecode(data.http.get_ntp_details.response_body).results
}