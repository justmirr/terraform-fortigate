variable "fortimanager_ip" {
  description = "Accessing IP of the FortiManager"
  type = string
}
variable "fortimanager_token" {
  description = "FortiManager API token"
  type = string
}

variable "fortigate_ip" {
  description = "IP of the FortiGate device"
  type = string
}
variable "fortigate_token" {
  description = "API token of the FortiManagers"
  type = string
}
variable "fortigate_admin" {
  description = "FortiGate login username"
  type = string
}
variable "fortigate_password" {
  description = "FortiGate login password"
  type = string
}

variable "add_fortimanager_allow_monitor" {
  description = "Allow FortiManager to monitor the device"
  type = string
}
variable "add_fortimanager_allow_push_configuration" {
  description = "Allow FortiManager to push configuration to the device"
  type = string
}
variable "add_fortimanager_allow_push_firmware" {
  description = "Allow FortiManager to push firmware to the device"
  type = string
}
variable "add_fortimanager_allow_remote_firmware_upgrade" {
  description = "Allow FortiManager to upgrade firmware remotely"
  type = string
}

variable "add_fortimanager_mode" {
  description = "FortiManager mode"
  type = string
}
variable "add_fortimanager_type" {
  description = "FortiManager type"
  type = string
}
variable "fortimanager_adom" {
  description = "FortiManager ADOM"
  type = string
}
variable "fortigate_vdom" {
  description = "FortiGate VDOM"
  type = string
}
variable "fortigate_device_name" {
  description = "FortiGate device name"
  type = string
}
variable "fortimanager_mgmt_mode" {
  description = "FortiManager management mode"
  type = string
}