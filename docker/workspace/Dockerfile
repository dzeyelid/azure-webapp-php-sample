FROM php:8.1-cli

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
      git \
      libzip-dev

RUN docker-php-ext-install \
  bcmath \
  zip

RUN rm -rf /var/lib/apt/lists/*

RUN curl -s https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer | php -- --quiet \
  && mv composer.phar /usr/local/bin/composer
