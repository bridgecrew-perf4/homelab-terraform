//OpenVPN EC2 Instance
resource "aws_instance" "OpenVPN" {
  ami           = "ami-059f1cc52e6c85908"
  instance_type = "t2.micro"

  tags = {
    Name   = "OpenVPN"
    Access = "Public"
  }
}

//NAT Gateway EC2 Instance
resource "aws_instance" "NAT-Gateway" {
  ami           = "ami-00a9d4a05375b2763"
  instance_type = "t2.micro"

  tags = {
    Name   = "NAT Gateway"
    Access = "Public"
  }
}

//BookStack EC2 Instance
resource "aws_instance" "BookStack" {
  ami           = "ami-042e8287309f5df03"
  instance_type = "t2.micro"

  tags = {
    Name   = "BookStack"
    Access = "Public"
  }
}

//Valheim EC2 Instance
resource "aws_instance" "Valheim" {
  ami           = "ami-059f1cc52e6c85908"
  instance_type = "t3.medium"

  tags = {
    Name   = "Valheim"
    Access = "Public"
  }
}
