
FROM node:22.5.1-bookworm

WORKDIR /usr/app

COPY run.sh .
COPY healthcheck.sh .

RUN npm update && npm install http-server

EXPOSE 80

CMD ["./run.sh"]

HEALTHCHECK --start-period=30s --start-interval=2s CMD "./healthcheck.sh"

