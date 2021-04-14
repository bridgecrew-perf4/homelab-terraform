//OpenVPN EC2 Instance
resource "aws_instance" "OpenVPN" {
  ami = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  tags = {
   Name = "OpenVPN"
   Access = "Public"
 }
}
