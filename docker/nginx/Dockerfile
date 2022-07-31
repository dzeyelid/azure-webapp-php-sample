FROM nginx

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.original

COPY ./laravel.conf /etc/nginx/conf.d/
