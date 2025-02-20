terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = "1.21.1"
    }
  }
}

provider "fortios" {
  hostname = var.fortigate_ip
  token = var.fortigate_token
  insecure = true
}