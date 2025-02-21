FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install php php-mysql wget -y

COPY ./tools/script.sh .

RUN chmod +x /script.sh

CMD ["./script.sh"]
