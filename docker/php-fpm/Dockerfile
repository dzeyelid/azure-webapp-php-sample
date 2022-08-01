FROM php:fpm

COPY ./app /var/www/html

RUN chown -R www-data:www-data /var/www/html/storage \
  && chmod -R ug+w /var/www/html/storage

WORKDIR /var/www/html
