FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install -y nodejs

COPY ./tools/ .

RUN chmod +x server.js

CMD ["node", "server.js"]
