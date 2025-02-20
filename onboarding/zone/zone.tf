resource "fortios_system_zone" "system_zone" {
  dynamic "interface" {
    for_each = var.system_zone_interface_names
    content {
      interface_name = interface.value
    }
  }
  intrazone = var.system_zone_intrazone
  name = var.system_zone_name
}