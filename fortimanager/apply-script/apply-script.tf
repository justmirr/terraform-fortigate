resource "fortios_fmg_devicemanager_script_execute" "install_script" {
  script_name    = var.script_or_group_name
  target_devname = var.fortigate_device_name
  timeout        = var.install_script_timeout
}