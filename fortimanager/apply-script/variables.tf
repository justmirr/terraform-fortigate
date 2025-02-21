variable "fortimanager_ip" {
  description = "IP of the fortimanager device"
  type = string 
}
variable "fortimanager_token" {
  description = "API token for the fortimanager device"
  type = string  
}
variable "fortimanager_user" {
  description = "Username of the fortimanager device"
  type = string
}
variable "fortimanager_password" {
  description = "Password of the fortimanager device"
  type = string
}
variable "fortimanager_insecure" {
  description = "Insecure flag for the fortimanager UI"
  type = bool
}
variable "script_or_group_name" {
  description = "Name of the script or script group"
  type = string
}
variable "fortigate_device_name" {
  description = "Name of the fortigate device"
  type = string
}
variable "install_script_timeout" {
  description = "Timeout for the install script"
  type    = number 
}