FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install -y npm nodejs

COPY ./tools/ .

CMD ["node ./tools/server.js"]
