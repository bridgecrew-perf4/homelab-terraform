//OpenVPN EC2 Instance
resource "aws_instance" "openvpn" {
  ami           = "ami-059f1cc52e6c85908"
  instance_type = "t2.micro"
  security_groups = [aws_default_security_group.default.id, aws_security_group.openvpn.id]
  disable_api_termination = true

  tags = {
    Name   = "OpenVPN"
    Access = "Public"
  }
}

//NAT Gateway EC2 Instance
resource "aws_instance" "nat-gateway" {
  ami           = "ami-00a9d4a05375b2763"
  instance_type = "t2.micro"
  security_groups = [aws_default_security_group.default.id, aws_security_group.nat-gateway.id]
  disable_api_termination = true

  tags = {
    Name   = "NAT Gateway"
    Access = "Public"
  }
}

//Valheim EC2 Instance
resource "aws_instance" "valheim" {
  ami           = "ami-059f1cc52e6c85908"
  instance_type = "t3.medium"
  security_groups = [aws_default_security_group.default.id, aws_security_group.valheim.id]
  disable_api_termination = true

  tags = {
    Name   = "Valheim"
    Access = "Public"
  }
}
