//OpenVPN Network Interface
resource "aws_network_interface" "openvpn" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.openvpnInternalIPAddress]

  tags = {
    Name = "OpenVPN"
  }
}

//NAT Gateway Network Interface
resource "aws_network_interface" "nat-gateway" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.natgatewayInternalIPAddress]

  tags = {
    Name = "NAT Gateway"
  }
}

//Valheim Network Interface
resource "aws_network_interface" "valheim" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.valheimInternalIPAddress]

  tags = {
    Name = "Valheim"
  }
}
