EXPOSE 80

RUN apt update && apt install -y apache2
RUN apt install -y  php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip

COPY apache2/ports.conf /etc/apache2/ports.conf
COPY reverse_proxy/nginx.conf /etc/nginx/nginx.conf
COPY reserve_proxy/proxy.conf /etc/nginx/proxy.conf
ENV APACHE_RUN_DIR=/var/www/html

RUN service apache2 restart && service nginx restart

WORKDIR /var/www/html