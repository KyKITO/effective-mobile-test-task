FROM php:8.0-fpm

WORKDIR /var/www

COPY . /var/www

RUN apt-get update \
    && docker-php-ext-install mysqli pdo pdo_mysql

EXPOSE 9000

CMD ["php-fpm", "-F"]