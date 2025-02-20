data "http" "get_static_routes" {
  url = "https://${var.fortigate_ip}/api/v2/cmdb/router/static/"
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

locals {
  routes = jsondecode(data.http.get_static_routes.response_body).results
  default_routes = [
    for route in local.routes : route.seq-num
    if route.dst == "0.0.0.0 0.0.0.0" || route.dst == "0.0.0.0/0"
  ]
}

resource "null_resource" "delete_static_route" {
  count = length(local.default_routes)

  provisioner "local-exec" {
    interpreter = ["bash", "-c"]
    command     = "curl --location --request DELETE 'https://${var.fortigate_ip}/api/v2/cmdb/router/static/${local.default_routes[count.index]}' --header 'Authorization: Bearer ${var.bearer_token}' -k"
  }
}

output "deleted_routes" {
  value = local.default_routes
}