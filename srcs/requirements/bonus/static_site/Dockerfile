FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install -y npm nodejs

COPY ./tools/ .

CMD ["nodejs" "./tools/server.js"]
