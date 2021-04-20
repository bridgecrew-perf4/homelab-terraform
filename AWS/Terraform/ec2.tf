//OpenVPN EC2 Instance
resource "aws_instance" "OpenVPN" {
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"

  tags = {
    Name   = "OpenVPN"
    Access = "Public"
  }
}

//NAT Gateway
resource "aws_instance" "NAT Gateway" {
  ami           = "ami-00a9d4a05375b2763"
  instance_type = "t2.micro"

  tags = {
    Name   = "NAT Gateway"
    Access = "Public"
  }
}
