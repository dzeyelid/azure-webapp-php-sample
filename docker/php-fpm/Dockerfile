FROM php:8.1-fpm

COPY ./app /var/www/html

WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html/storage \
  && chmod -R ug+w /var/www/html/storage

