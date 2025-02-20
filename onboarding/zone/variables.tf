variable "fortigate_ip" {
  description = "IP of the fortigate device"
  type = string
}
variable "bearer_token" {
  description = "API token for the fortigate device"
  type = string
}
variable "system_zone_interface_names" {
  description = "List of interface names to be added to the zone"
  type = list(string)
}
variable "system_zone_intrazone" {
  description = "Enable intra-zone traffic"
  type = string
}
variable "system_zone_name" {
  description = "Name of the zone"
  type = string
}