resource "fortios_system_global" "set_grace_time" { 
  admin_ssh_grace_time = var.grace_time 
} 

data "fortios_system_global" "get_grace_time" { 
  depends_on = [ fortios_system_global.set_grace_time ] 
} 

output "print_grace_time" { 
  value = data.fortios_system_global.get_grace_time.admin_ssh_grace_time 
}    

// Or

resource "null_resource" "set_ssh_timeout" {
  provisioner "local-exec" {
    interpreter = ["bash", "-c"]
    command = "curl --location --request PUT -k 'https://${var.fortigate_ip}/api/v2/cmdb/system/global' --header 'Content-Type: application/json' --header 'Authorization: Bearer ${var.bearer_token}' --data '{\"admin-ssh-grace-time\": ${var.grace_time}}'"
  }
}