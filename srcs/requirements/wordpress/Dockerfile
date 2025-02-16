FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./tools/script.sh /

RUN chmod +x /script.sh

CMD ["./script.sh"]
