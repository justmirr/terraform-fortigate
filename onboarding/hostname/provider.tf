terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
      version = "1.22.0"
    }
  }
}

provider "fortios" {
  hostname = var.fortigate_ip
  token = var.bearer_token
  insecure = true
}
