terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = "1.21.1"
    }
  }
}

provider "fortios" {
  fmg_hostname = var.fortimanager_ip
  fmg_username = var.fortimanager_user
  fmg_passwd = var.fortimanager_password
  token = var.fortimanager_token
  fmg_insecure = var.fortimanager_insecure
}