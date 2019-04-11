FROM alpine:latest

RUN apk --update add --no-cache zip \
  unzip \
  bash \
  && rm -rf /var/cache/apk/*

RUN apk add --update  --no-cache nodejs nodejs-npm

RUN npm i -g @adonisjs/cli pm2 gulp yarn
