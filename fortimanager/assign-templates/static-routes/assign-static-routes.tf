data "http" "add_router_template_member" {
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
        url = "/pm/template/_router_static/adom/${var.fortimanager_adom}/${var.template_name}/scope member"
      }
    ]
    session = "h/Z14lbhlu+Nk6ZpqQnXrM8z2jh+HFXJTP4h8QqhxDD4IQ6oohLctpcoXh/YAKcxLb+7EGxjSVyYw/DzZCL9gyOcQARoDb+0"
  })
}

output "router_template_response" {
  value = jsondecode(data.http.add_router_template_member.response_body).result
}