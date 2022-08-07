FROM php:8.1-fpm

COPY ./app /var/www/html

WORKDIR /var/www/html

RUN chown -R www-data:www-data ./storage \
  && chmod -R ug+w ./storage
