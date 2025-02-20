# Importing an existing interface to update its DHCP settings:
# terraform import fortios_system_interface.system_interface_dhcp_relay VLAN3

resource "fortios_system_interface" "system_interface_dhcp_relay" {
  name = var.dhcp_relay_interface_name
  vdom = var.dhcp_relay_vdom
  vlanid = var.dhcp_relay_vlanid
  dhcp_relay_service = var.dhcp_relay_service
  dhcp_relay_ip = var.dhcp_relay_ip
  dhcp_relay_type = var.dhcp_relay_type
  allowaccess = var.dhcp_relay_allowaccess
}