FROM debian:bullseye

RUN apt update -y

RUN apt upgrade -y

RUN apt install php-fpm php.mysql -y

RUN apt install curl -y

COPY ./tools/script.sh /

CMD ["./script.sh"]
