//Deafult Security Group
resource "aws_default_security_group" "default" {
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [""]
  }

  ingress {
    description = "Echo Request"
    from_port   = 7
    to_port     = 7
    protocol    = "tcp"
    security_groups = ""
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

//OpenVPN Security Group
resource "aws_security_group" "OpenVPN" {
  vpc_id      = aws_vpc.rubi-vpc.id

  ingress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    }


}
