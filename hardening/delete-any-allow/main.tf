data "http" "get_firewall_policies" {
  url = "https://${var.fortigate_ip}/api/v2/cmdb/firewall/policy/"
  request_headers = {
    Authorization = "Bearer ${var.bearer_token}"
  }
  insecure = true
}

locals {
  policies = jsondecode(data.http.get_firewall_policies.response_body).results
  any_any_allow_policies = [
    for policy in local.policies : policy.policyid
    if policy.srcaddr[0].name == "all" &&
       policy.dstaddr[0].name == "all" &&
       policy.action == "accept"
  ]
}

resource "null_resource" "delete_firewall_policy" {
  count = length(local.any_any_allow_policies)

  provisioner "local-exec" {
    interpreter = ["bash", "-c"]
    command     = "curl -L -X DELETE 'https://${var.fortigate_ip}/api/v2/cmdb/firewall/policy/${local.any_any_allow_policies[count.index]}' -H 'Authorization: Bearer ${var.bearer_token}' -k"
  }
}

output "deleted_policies" {
  value = local.any_any_allow_policies
}