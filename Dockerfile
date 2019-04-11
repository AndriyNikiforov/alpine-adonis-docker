FROM alpine:latest

RUN apk --update add --no-cache zip \
  unzip \
  bash \
  curl \
  && rm -rf /var/cache/apk/*

RUN curl -sL https://deb.nodesource.com/setup_10.x |  bash
RUN apk add --update nodejs nodejs-npm

RUN npm i -g @adonisjs/cli pm2 gulp yarn
