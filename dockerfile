FROM nginx

EXPOSE 80 443

RUN apt update && apt -y upgrade && apt install -y apache2 
RUN apt -y install apt-transport-https lsb-release ca-certificates curl wget
RUN wget  -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
RUN sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

RUN apt-get update -y  && apt-get install -y php8.0 libapache2-mod-php8.0 php8.0-common php8.0-mysql \
 php8.0-gmp php8.0-curl php8.0-mbstring php8.0-xmlrpc php8.0-gd php8.0-xml php8.0-cli php8.0-zip
COPY apache2/ports.conf /etc/apache2/ports.conf
COPY apache2/apache2.conf /etc/apache2/apache2.conf
COPY reverse_proxy/nginx.conf /etc/nginx/nginx.conf
COPY reserve_proxy/proxy.conf /etc/nginx/proxy.conf
ENV APACHE_RUN_DIR=/var/www/html
ENV APACHE_RUN_USER=root
RUN service apache2 restart && service nginx restart


