//Variable List
variable "accessKey" {
     default = "<PUT IN YOUR AWS ACCESS KEY>"
}
variable "secretKey" {
     default = "<PUT IN YOUR AWS SECRET KEY>"
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
variable "security_group_id" {

}
