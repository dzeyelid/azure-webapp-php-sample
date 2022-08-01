FROM nginx

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.original

COPY ./docker/web-nginx/laravel.conf /etc/nginx/conf.d/

COPY ./app /var/www/html
