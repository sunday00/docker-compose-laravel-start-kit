FROM php:8.1-fpm-alpine

ENV PHPGROUP=laravel
ENV PHPUSER=laravel

RUN adduser -g ${PHPGROUP} -s /bin/sh -D ${PHPUSER}

RUN sed -i "s/user = www-data/user = ${PHPUSER}/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = ${PHPGROUP}/g" /usr/local/etc/php-fpm.d/www.conf

RUN mkdir -p /var/www/html/public

RUN docker-php-ext-install pdo pdo_mysql

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*
RUN apk --no-cache update 
RUN apk --no-cache upgrade
RUN apk add --no-cache --virtual gcc
RUN apk add --no-cache --virtual g++
RUN apk add --no-cache --virtual autoconf
RUN apk add --no-cache --virtual make 
RUN apk add --no-cache --virtual php8-dev

CMD ["php-fpm", "-y", "/usr/local/etc/php-fpm.conf", "-R"]