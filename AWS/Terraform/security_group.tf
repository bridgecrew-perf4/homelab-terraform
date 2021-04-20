//Deafult Security Group
resource "aws_default_security_group" "default" {
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["aws_security_group.openvpn.id"]
  }

  ingress {
    description = "Echo Request"
    from_port   = 7
    to_port     = 7
    protocol    = "tcp"
    security_groups = ["aws_security_group.openvpn.id"]
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
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description     = "OpenVPN"
    from_port       = 1194
    to_port         = 1194
    protocol        = "udp"
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

//Nat Gateway Security Group
resource "aws_security_group" "nat gateway" {
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description     = "HTTP"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
  }
  
  ingress {
    description     = "HTTPS"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
  }
  
  ingress {
    description     = "SMTPS"
    from_port       = 465
    to_port         = 465
    protocol        = "tcp"
  }
  
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
