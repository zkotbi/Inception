FROM debian:bullseye

RUN apt update -y

RUN apt upgrade -y

RUN apt install -y nginx

RUN apt install -y openssl

# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=zkotbi.1337.ma"
