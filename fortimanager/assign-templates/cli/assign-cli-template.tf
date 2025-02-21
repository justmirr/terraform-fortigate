data "http" "add_cli_template_member" {
  url     = "https://${var.fortimanager_ip}/jsonrpc"
  method  = "POST"
  insecure = true

  request_headers = {
    Content-Type  = "application/json"
    Authorization = "Bearer ${var.fortimanager_token}"
  }

  request_body = jsonencode({
    id     = 1
    method = "add"
    params = [
      {
        data = [
          {
            name = "${var.fortigate_device_name}"
            vdom = "${var.fortigate_vdom}"
          }
        ]
        url = "/pm/config/adom/${var.fortimanager_adom}/obj/cli/template/${var.template_name}/scope member"
      }
    ]
    session = "{{session}}"
  })
}

output "cli_template_response" {
  value = jsondecode(data.http.add_cli_template_member.response_body).result
}