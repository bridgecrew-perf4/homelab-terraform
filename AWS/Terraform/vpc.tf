//VPC
resource "aws_vpc" "rubi-vpc" {
  cidr_block = "var.vpcCIDRblock"
}
