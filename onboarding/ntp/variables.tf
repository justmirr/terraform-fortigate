# NTP Config
variable "fortigate_ip" {
  description = "IP of the fortigate device"
  type = string
}
variable "bearer_token" {
  description = "API token for the fortigate device"
  type = string
}
variable "system_global_timezone" {
  description = "Timezone for the system (e.g. Asia/Kolkata)"
  type = string
}
variable "system_ntp_ntpsync" {
  description = "Enable or disable NTP sync"
  type = string
}
variable "system_ntp_type" {
  description = "NTP type (e.g. custom)"
  type = string
}
variable "system_ntp_syncinterval" {
  description = "NTP sync interval in seconds"
  type = string
}
variable "ntpserver_id" {
  description = "ID of the NTP server"
  type = string
}
variable "ntpserver_server" {
  description = "IP address of the NTP server"
  type = string
}
variable "ntpserver_ip_type" {
  description = "IP type of the NTP server (e.g. IPv4)"
  type = string
}
variable "ntpserver_interface" {
  description = "Interface to use for NTP server (e.g. fortilink)"
  type = string
}
