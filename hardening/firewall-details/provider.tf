terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = "1.21.1"
    }
  }
}

provider "fortios" {
  token = var.bearer_token
  hostname = var.fortigate_ip
  insecure = true
}