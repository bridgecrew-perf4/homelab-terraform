//OpenVPN Network Interface
resource "aws_network_interface" "OpenVPN" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.openvpnInternalIPAddress]

  tags = {
    Name = "OpenVPN"
  }
}

//NAT Gateway Network Interface
resource "aws_network_interface" "Nat Gateway" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.natgatewayInternalIPAddress]

  tags = {
    Name = "NAT Gateway"
  }
}

//BookStack Network Interface
resource "aws_network_interface" "BookStack" {
  subnet_id   = aws_subnet.rubi-private-subnet.id
  private_ips = [var.bookstackInternalIPAddress]

  tags = {
    Name = "BookStack"
  }
}

//Valheim Network Interface
resource "aws_network_interface" "Valheim" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.valheimInternalIPAddress]

  tags = {
    Name = "Valheim"
  }
}
