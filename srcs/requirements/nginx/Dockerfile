FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install -y nginx

RUN apt install -y openssl

COPY ./tools/script.sh /

RUN chmod +x /script.sh

CMD ["./script.sh"]