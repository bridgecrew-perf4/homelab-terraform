//OpenVPN Elastic IP Address
resource "aws_eip" "OpenVPN" {
  vpc = true

  instance                  = aws_instance.OpenVPN.id
  associate_with_private_ip = var.openvpnInternalIPAddress
  depends_on                = [aws_internet_gateway.rubi-internet-gateway]
}

//Valheim Elastic IP Address
resource "aws_eip" "Valheim" {
  vpc = true

  instance                  = aws_instance.Valheim.id
  associate_with_private_ip = var.valheimInternalIPAddress
  depends_on                = [aws_internet_gateway.rubi-internet-gateway]
}
