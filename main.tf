terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
#provedor AWS -> localizado em Oregon
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  # Maquina ubuntu server 20.04 LTS
  ami           = "ami-0cb4e786f15603b0d"
  instance_type = "t2.micro"
  key_name = "Apiki"
  
  tags = {
    Name = "Apiki"
  }
}
#Mostra o Ip da instância na saida do terminal
output "ip_publico" {
  value       = aws_instance.app_server.public_ip
  description = "ver ip publico"
  
}


  