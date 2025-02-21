data "http" "fetch_provisioning_templates" {
  url    = "https://${var.fortimanager_ip}/jsonrpc"
  method = "POST"
  insecure = true

  request_headers = {
    Content-Type  = "application/json"
    Authorization = "Bearer ${var.fortimanager_token}"
  }

  request_body = jsonencode({
    id     = 3
    method = "get"
    params = [
      {
        url = "/pm/template/adom/${var.fortimanager_adom}"
      }
    ]
    session = "jn9iXGAGSGicSBO6exwiFEqF2kgmVWlWWIGopnL/WqxBgJvVslB8+jvoxMUHP6xFgEByd4gXtt9Uci87nTsatw=="
    verbose = 1
  })
}

output "provisioning_templates" {
  value = jsondecode(data.http.fetch_provisioning_templates.response_body).result
}