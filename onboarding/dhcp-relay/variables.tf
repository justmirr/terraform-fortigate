variable "fortigate_ip" {
  description = "IP of the fortigate device"
  type = string
}
variable "bearer_token" {
  description = "API token for the fortigate device"
  type = string
}
variable "dhcp_relay_interface_name" {
  description = "Name of the interface on which to configure DHCP relay"
  type = string
}
variable "dhcp_relay_vdom" {
  description = "VDOM in which to configure DHCP relay"
  type = string
}
variable "dhcp_relay_vlanid" {
  description = "VLAN ID of the interface"
  type = number
}
variable "dhcp_relay_service" {
  description = "Enable or disable DHCP relay service"
  type = string
}
variable "dhcp_relay_ip" {
  description = "IP address of the DHCP server"
  type = string
}
variable "dhcp_relay_type" {
  description = "Type of DHCP relay (regular, ipsec, gre)"
  type = string
}
variable "dhcp_relay_allowaccess" {
  description = "Allowed access for the DHCP relay"
  type = string
}