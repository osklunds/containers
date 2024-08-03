
FROM node:22.5.1-bookworm

WORKDIR /usr/app

COPY run.sh .

RUN npm update && npm install http-server

EXPOSE 8080

CMD ["./run.sh"]

