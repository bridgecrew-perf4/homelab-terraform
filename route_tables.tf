//Private Subnet to NAT Instance
resource "aws_route_table" "Private Subnet to NAT Instance" {
  vpc_id = aws_vpc.rubi-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    instance_id = aws_instance.NAT Gateway.id
  }

  tags = {
    Name = "Private Subnet to NAT Instance"
  }
}

//Public Subnet to Internet Gateway
resource "aws_route_table" "Public Subnet to Internet Gateway" {
  vpc_id = aws_vpc.rubi-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.rubi-internet-gateway.id
  }

  tags = {
    Name = "Public Subnet to Internet Gateway"
  }
}
