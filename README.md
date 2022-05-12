# devops-challenge
Desafio para candidatos a DevOps. 

### Arquitertura.

  - [Nginx](https://www.nginx.com/) configurado como proxy para o Apache. nginx version: nginx/1.21.6
  - [Apache](https://www.apache.org/) Server version: Apache/2.4.53 (Debian) Server built:   2022-03-14T16:28:35
  - [PHP](https://php.net/) PHP 8.0.18
  - [MySql](https://www.mysql.com/) mysql  Ver 14.14 Distrib 5.7.38, for Linux (x86_64) using  EditLine wrapper
  - [WordPress](https://wordpress.org) Wordpress 5.9.3     

### Frameworks usadas

Você também pode usar como **Diferencial**:
  - [Terraform](https://www.terraform.io/)
  - [Ansible](https://www.ansible.com/). Com uso de Playbook
  - [Docker File](https://docs.docker.com/engine/reference/builder/)
  - [Docker Compose](https://docs.docker.com/compose/) 
  - [AWS](https://aws.amazon.com/pt/) EC2

### Tutorial
Primeiro instala em seu ambiente Terraform, Ansible e AWS CLI.
Configurar AWS ClI usei no terminal "aws configure" ou [leia documentação](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-configure-files.html). Depois configurado no terminal da inicio ao terraform com um "Terraform init" logo depois você pode da um "Terraform plan" ou "terraform aplly" 
OBS. Configure as Chaves ssh. pode olha com mais detalhes par de chaves na documentação da [AWS EC2](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/WindowsGuide/create-key-pairs.html) 

### Ansible e Playbook
Configurado o Par de chave no terraform e com posse da chave privada no diretorio. Peguei o Ip da saida do Terraform apply e edita no Host.yml.
Em seguinda use comando "ansible-playbook playbook.yml --key-file Apiki.pem -i host.yml -u ubuntu".

### servidor
use o IP no navegador para ver a pagina do Wordpress e realizar as configurações como do Banco de dados, essa configurações estão no Docker-compose.yml
