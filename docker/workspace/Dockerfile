FROM php:8.1-cli

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
      git \
      libzip-dev

RUN docker-php-ext-install \
  bcmath \
  zip

RUN rm -rf /var/lib/apt/lists/*

RUN curl -s https://raw.githubusercontent.com/composer/getcomposer.org/0a51b6fe383f7f61cf1d250c742ec655aa044c94/web/installer | php -- --quiet \
  && mv composer.phar /usr/local/bin/composer
