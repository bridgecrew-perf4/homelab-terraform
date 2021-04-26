//OpenVPN Elastic IP Address
resource "aws_eip" "openvpn" {
  vpc = true

  instance                  = aws_instance.openvpn.id
  associate_with_private_ip = var.openvpnInternalIPAddress
  depends_on                = [aws_internet_gateway.rubi-internet-gateway]
}

//Valheim Elastic IP Address
resource "aws_eip" "valheim" {
  vpc = true

  instance                  = aws_instance.valheim.id
  associate_with_private_ip = var.valheimInternalIPAddress
  depends_on                = [aws_internet_gateway.rubi-internet-gateway]
}
