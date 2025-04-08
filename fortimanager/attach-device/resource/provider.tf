terraform {
  required_providers {
    fortimanager = {
      source = "fortinetdev/fortimanager"
      version = "1.13.0"
    }
  }
}

provider "fortimanager" {
  hostname     = "34.60.233.171"
  username     = "admin"
  password     = "Admin@123456"
  insecure     = "true"
  scopetype    = "adom"
  adom         = "root"
}