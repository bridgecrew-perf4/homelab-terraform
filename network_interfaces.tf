//OpenVPN Network Interface
resource "aws_network_interface" "openvpn" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.openvpnInternalIPAddress]

  tags = {
    Name = "OpenVPN"
  }
}

//Attach OpenVPN Security Group
resource "aws_network_interface_sg_attachment" "openvpn_sg_attachment" {
  security_group_id    = aws_security_group.openvpn.id
  network_interface_id = aws_network_interface.openvpn.id
}

//NAT Gateway Network Interface
resource "aws_network_interface" "nat-gateway" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.natgatewayInternalIPAddress]

  tags = {
    Name = "NAT Gateway"
  }
}

//Attach NAT Gateway Security Group
resource "aws_network_interface_sg_attachment" "nat-gateway_sg_attachment" {
  security_group_id    = aws_security_group.nat-gateway.id
  network_interface_id = aws_network_interface.nat-gateway.id
}

//BookStack Network Interface
resource "aws_network_interface" "bookstack" {
  subnet_id   = aws_subnet.rubi-private-subnet.id
  private_ips = [var.bookstackInternalIPAddress]

  tags = {
    Name = "BookStack"
  }
}

//Attach BookStack Security Group
resource "aws_network_interface_sg_attachment" "bookstack_sg_attachment" {
  security_group_id    = aws_security_group.bookstack.id
  network_interface_id = aws_network_interface.bookstack.id
}

//Valheim Network Interface
resource "aws_network_interface" "valheim" {
  subnet_id   = aws_subnet.rubi-public-subnet.id
  private_ips = [var.valheimInternalIPAddress]

  tags = {
    Name = "Valheim"
  }
}

//Attach Valheim Security Group
resource "aws_network_interface_sg_attachment" "valheim_sg_attachment" {
  security_group_id    = aws_security_group.valheim.id
  network_interface_id = aws_network_interface.valheim.id
}
