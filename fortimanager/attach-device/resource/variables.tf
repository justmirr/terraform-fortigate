variable "fmg_adom" {
  description = "The ADOM (Administrative Domain) in FortiManager where the device will be added"
  type        = string
}

variable "device_ip" {
  description = "The IP address of the device to be added"
  type        = string
}

variable "mgmt_mode" {
  description = "The management mode for the device (e.g., fmg)"
  type        = string
}

variable "device_name" {
  description = "The name to assign to the device in FortiManager"
  type        = string
}

variable "admin_username" {
  description = "The admin username for accessing the device"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "The admin password for accessing the device"
  type        = string
  sensitive   = true
}

variable "device_action" {
  description = "The action to perform when adding the device (e.g., add_model)"
  type        = string
}

variable "os_type" {
  description = "The OS type of the device (e.g., fos for FortiOS)"
  type        = string
}

variable "os_version" {
  description = "The OS version of the device (e.g., 7.6.2)"
  type        = string
}

variable "serial_number" {
  description = "The serial number of the device"
  type        = string
}
