FROM debian:bullseye

RUN apt update -y && apt upgrade -y

RUN apt install  npm nodejs -y

COPY ./tools/ .

RUN chmod +x /tools/server.js

CMD ["node", "/tools/server.js"]
