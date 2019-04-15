FROM alpine:latest

RUN apk --update add --no-cache bash \
  && rm -rf /var/cache/apk/*

RUN apk add --update --no-cache nodejs nodejs-npm

RUN npm i -g -s -f @adonisjs/cli pm2 gulp yarn
