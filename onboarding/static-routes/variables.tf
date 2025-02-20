variable "fortigate_ip" {
  description = "IP of the fortigate device"
  type = string
}
variable "bearer_token" {
  description = "API token for the fortigate device"
  type = string
}
variable "router_static_status" {
  description = "Enable or disable the static route"
  type = string
}
variable "router_static_gateway" {
  description = "Gateway IP address"
  type = string
}
variable "router_static_src" {
  description = "Source IP address and mask"
  type = string
}
variable "router_static_dst" {
  description = "Destination IP address and mask"
  type = string
}
variable "router_static_priority" {
  description = "Priority of the static route"
  type = number
}
variable "router_static_distance" {
  description = "Distance of the static route"
  type = number
}
variable "router_static_device" {
  description = "Device to use for the static route"
  type = string
}
