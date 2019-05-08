FROM keymetrics/pm2:10-alpine

RUN apk --update add --no-cache bash \
  && rm -rf /var/cache/apk/*

RUN npm i -g -s -f @adonisjs/cli yarn
