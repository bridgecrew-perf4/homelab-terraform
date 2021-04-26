//Deafult Security Group
resource "aws_default_security_group" "default" {
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.openvpn.id]
  }

  ingress {
    description     = "Echo Request"
    from_port       = 7
    to_port         = 7
    protocol        = "tcp"
    security_groups = [aws_security_group.openvpn.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Default"
  }
}

//OpenVPN Security Group
resource "aws_security_group" "openvpn" {
  description = "OpenVPN"
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description = "OpenVPN"
    from_port   = 1194
    to_port     = 1194
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "OpenVPN"
  }
}

//Nat Gateway Security Group
resource "aws_security_group" "nat-gateway" {
  description = "NAT Gateway"
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.privateSubnetCIDRblock]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.privateSubnetCIDRblock]
  }

  ingress {
    description = "SMTPS"
    from_port   = 465
    to_port     = 465
    protocol    = "tcp"
    cidr_blocks = [var.privateSubnetCIDRblock]
  }

  egress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "SMTPS"
    from_port   = 465
    to_port     = 465
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "NAT Gateway"
  }
}

//BookStack Security Group
resource "aws_security_group" "bookstack" {
  description = "BookStack"
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [aws_security_group.openvpn.id]
  }

  ingress {
    description = "SMTPS"
    from_port   = 465
    to_port     = 465
    protocol    = "tcp"
    security_groups = [aws_security_group.nat-gateway.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "BookStack"
  }
}

//Valheim Security Group
resource "aws_security_group" "valheim" {
  description = "Valheim"
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description = "Valheim"
    from_port   = 2456
    to_port     = 2456
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Valheim"
    from_port   = 2457
    to_port     = 2457
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Valheim"
    from_port   = 2458
    to_port     = 2458
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Valheim"
  }
}
