FROM php:8.0-apache

EXPOSE 80

RUN apt update && apt install nginx 
COPY apache2/ports.conf /etc/apache2/ports.conf
COPY reverse_proxy/nginx.conf /etc/nginx/nginx.conf
COPY reverse_proxy/proxy.conf /etc/nginx/proxy.conf

RUN service apache2 restart && service nginx restart

WORKDIR /var/www/html

