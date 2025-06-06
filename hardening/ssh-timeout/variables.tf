variable "fortigate_ip" {
  description = "The IP address of the FortiGate"
  type = string
}
variable "bearer_token" {
  description = "The bearer token for the FortiGate"
  type = string
}
variable "grace_time" {
  description = "The grace time for the SSH session"
  type = number
}