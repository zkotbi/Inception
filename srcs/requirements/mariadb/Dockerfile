FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt-get install mariadb-server -y

RUN apt-get install mariadb-client -y

RUN sed -i 's/127.0.0.1/0.0.0.0/1' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/run.sh /

RUN chmod +x /run.sh

CMD ["./run.sh"]
