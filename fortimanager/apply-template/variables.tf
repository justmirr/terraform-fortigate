variable "fortimanager_ip" {
  description = "The IP address of the fortimanager"
  type = string 
}
variable "fortimanager_token" {
  description = "API token of the fortimanager"
  type = string  
}
variable "fortimanager_user" {
  description = "Username of the fortimanager"
  type = string
}
variable "fortimanager_password" {
  description = "Password of the fortimanager"
  type = string
}
variable "fortimanager_insecure" {
  description = "Whether to ignore SSL certificate errors"
  type = bool
}
variable "fortigate_device_name" {
  description = "Name of the device to install the template on"
  type = string
}
variable "install_template_timeout" {
  description = "Timeout for the template installation"
  type    = number 
}