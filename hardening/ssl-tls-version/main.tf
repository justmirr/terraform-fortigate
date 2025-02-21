data "http" "get_ssl_tls_version" {
  url = "https://${var.fortigate_ip}/api/v2/cmdb/system/global"  
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

locals {
  response_json = jsondecode(data.http.get_ssl_tls_version.response_body)
  admin-https-ssl-versions = local.response_json.results["admin-https-ssl-versions"]
  ssl-min-proto-version = local.response_json.results["ssl-min-proto-version"]
}

output "admin-https-ssl-versions" {
  value = local.admin-https-ssl-versions
}

output "ssl-min-proto-version" {
  value = local.ssl-min-proto-version
}