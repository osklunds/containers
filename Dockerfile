
FROM node:alpine3.19

WORKDIR /usr/app

RUN npm update && npm install http-server

EXPOSE 8080

CMD ["/usr/app/node_modules/http-server/bin/http-server", "/", "-c-1"]
