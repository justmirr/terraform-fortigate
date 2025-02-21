resource "fortios_fmg_devicemanager_install_device" "install_template" {
  target_devname = var.fortigate_device_name
  timeout        = var.install_template_timeout
}