data "http" "get_static_routes" {
  url = "https://${var.fortigate_ip}/api/v2/cmdb/firewall/policy/"
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

locals {
  policies = jsondecode(data.http.get_static_routes.response_body).results
  disabled_policies = [
    for policy in local.policies : policy.policyid
    if policy.status == "disable"
  ]
}

resource "null_resource" "delete_firewall_policy" {
  count = length(local.disabled_policies)

  provisioner "local-exec" {
    interpreter = ["bash", "-c"]
    command     = "curl --location --request DELETE 'https://${var.fortigate_ip}/api/v2/cmdb/firewall/policy/${local.disabled_policies[count.index]}' --header 'Authorization: Bearer ${var.bearer_token}' -k"
  }
}

output "deleted_policies" {
  value = local.disabled_policies
}