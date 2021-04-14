//Public Subnet
resource "aws_subnet" "rubi-public-subnet" {
  vpc_id            = aws_vpc.rubi-vpc.id
  cidr_block        = "var.publicSubnetCIDRblock"
  availability_zone = "var.availabilityZone"
  tags = {
   Name = "rubi-public-subnet"
 }
}

//Private Subnet
resource "aws_subnet" "rubi-private-subnet" {
  vpc_id            = aws_vpc.rubi-vpc.id
  cidr_block        = "var.privateSubnetCIDRblock"
  availability_zone = "var.availabilityZone"
  tags = {
   Name = "rubi-private-subnet"
 }
}
