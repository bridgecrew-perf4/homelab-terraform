//Variable List
variable "accessKey" {
  default = "<ACCESS KEY>"
}
variable "secretKey" {
  default = "<SECRET KEY>"
}
variable "region" {
  default = "us-east-1"
}
variable "availabilityZone" {
  default = "us-east-1d"
}
variable "vpcCIDRblock" {
  default = "10.0.0.0/16"
}
variable "privateSubnetCIDRblock" {
  default = "10.200.1.0/24"
}
variable "publicSubnetCIDRblock" {
  default = "10.200.100.0/24"
}
variable "openvpnInternalIPAddress" {
  default = "10.200.100.6"
}
variable "natgatewayInternalIPAddress" {
  default = "	10.200.100.250"
}
variable "bookstackInternalIPAddress" {
  default = "10.200.1.8"
}
variable "valheimInternalIPAddress" {
  default = "10.200.100.10"
}
