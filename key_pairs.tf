//SSH Public Key
resource "aws_key_pair" "rubi-ssh-key" {
  key_name   = "rubi-ssh-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC85L3sv89Ptgcru2RYNM/65yvxF9IGCQwMoe/gscbouF4zw4h0pU+b2aaWablgU+gAmpixljKTp72lPRQHxnnO0B7Es5wYL7dDNakLLNLraPupqj+lEFmvtjzM0yPuvyPt5MzJdr0JeIoN9UE4L95kTE5SCWYMkj5+Vpw5zz8kP9LBqcoL+40R6LuUTVCg+61QXiO70J8VhImSP50awF0Szyeg7yyCZ2EgIWLkJBuaI3CZO/UH6sO6Uf54ejSonhQ9TLEkXA+2xHXPSA43CyyNuHC42UFvYbIupntpRdk1Zge8CudB1avMA7zRydJKFDYnxwhv+gCIR7OfXwXwYo3B"
}
