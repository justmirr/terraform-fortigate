data "http" "fg_config_status" {
  url     = "https://${var.fortigate_ip}/api/v2/monitor/system/central-management/status"
  method  = "GET"
  insecure = true

  request_headers = {
    Authorization = "Bearer ${var.fortigate_token}"
  }
}

output "fortimanager_status" {
  value = jsondecode(data.http.fg_config_status.response_body).results
}

data "http" "fmg_device_status" {
  url     = "https://${var.fortimanager_ip}/jsonrpc"
  method  = "POST"
  insecure = true

  request_headers = {
    Content-Type  = "application/json"
    Authorization = "Bearer ${var.fortimanager_token}"
  }

  request_body = jsonencode({
    id     = 1
    method = "get"
    params = [
      {
        url = "/dvmdb/device/Mir"
      }
    ]
    session = "{{session}}"
  })
}

output "fortigate_status" {
  value = jsondecode(data.http.fmg_device_status.response_body).result
}