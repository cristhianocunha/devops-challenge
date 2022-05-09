resource "aws_security_group" "apiki_grupoDeSeguranca" {
  name = "apiki_grupoDeSeguranca"
  ## Entrada da porta na AWS
  ingress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 0
      to_port = 0
      protocol = "tcp"
  }
  ingress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 80
      to_port = 80
      protocol = "tcp"
  }
  ingress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 22
      to_port = 22
      protocol = "tcp"
  }
  ingress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 443
      to_port = 443
      protocol = "tcp"
  }
  #Saida das portas
  egress{
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = [ "::/0" ]
      from_port = 0
      to_port = 0
      protocol = "-1"
  }
  tags = {
    Name = "apiki_grupoDeSeguranca"
  }
}