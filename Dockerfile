FROM php:8.1.5-fpm

WORKDIR /var/www

RUN apt-get update \
    && docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www

EXPOSE 9000

CMD["php-fpm"]