FROM alpine:latest

RUN apk --update add --no-cache zip --virtual \
  unzip \
  bash \
  curl \
  && rm -rf /var/cache/apk/*

RUN apk add --update  --no-cache --virtual nodejs nodejs-npm

RUN npm i -g @adonisjs/cli pm2 gulp yarn
