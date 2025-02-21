data "http" "assign_system_template" {
  url     = "https://${var.fortimanager_ip}/jsonrpc"
  method  = "POST"
  insecure = true

  request_headers = {
    Content-Type  = "application/json"
    Authorization = "Bearer ${var.fortimanager_token}"
  }

  request_body = jsonencode({
    id     = 3
    method = "add"
    params = [
      {
        data = [
          {
            name = "${var.fortigate_device_name}"
            vdom = "${var.fortigate_vdom}"
          }
        ]
        url = "/pm/${var.firewall_template_uri}/adom/${var.fortimanager_adom}/${var.template_name}/scope member"
      }
    ]
    session = "{{session}}"
  })
}

output "assign_template_result" {
  value = jsondecode(data.http.assign_system_template.response_body).result
}