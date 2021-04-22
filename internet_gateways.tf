//Internet Gateway
resource "aws_internet_gateway" "rubi-internet-gateway" {
  vpc_id = aws_vpc.rubi-vpc.id

  tags = {
    Name = "rubi-internet-gateway"
  }
}
