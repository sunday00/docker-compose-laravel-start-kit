FROM node:current-alpine

ENV NPMUSER=laravel
ENV NPMGROUP=laravel

RUN adduser -g ${NPMGROUP} -s /bin/sh -D ${NPMUSER}

RUN mkdir -p /home/node/app && chown -R node:node /home/node/app

WORKDIR /home/node/app

USER laravel