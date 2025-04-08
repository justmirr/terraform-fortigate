resource "fortimanager_dvm_cmd_add_device" "add-device" {
  fmgadom = var.fmg_adom
  device {
    ip        = var.device_ip
    mgmt_mode = var.mgmt_mode
    name      = var.device_name
    adm_usr   = var.admin_username
    adm_pass  = var.admin_password
    deviceaction = var.device_action
    os_type = var.os_type
    os_ver = var.os_version
    sn = var.serial_number
  }
}