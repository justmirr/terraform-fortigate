data "http" "add_ipsec_template_member" {
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
        data = {
          name = "${var.fortigate_device_name}"
          vdom = "${var.fortigate_vdom}"
        }
        url = "/pm/template/_ipsec/adom/${var.fortimanager_adom}/${var.template_name}/scope member"
      }
    ]
    session = "{{session}}"
  })
}

output "ipsec_template_response" {
  value = jsondecode(data.http.add_ipsec_template_member.response_body).result
}