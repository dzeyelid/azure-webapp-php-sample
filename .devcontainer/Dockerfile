# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
      software-properties-common

RUN add-apt-repository ppa:ondrej/nginx \
  && add-apt-repository ppa:ondrej/php

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
      nginx \
      php8.0 \
      php8.0-bcmath \
      php8.0-cli \
      php8.0-curl \
      php8.0-fpm \
      php8.0-mbstring \
      php8.0-mysql \
      php8.0-xml \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/0a51b6fe383f7f61cf1d250c742ec655aa044c94/web/installer -O - -q | php -- --quiet \
  && mv composer.phar /usr/local/bin/composer

ADD config/nginx/default /etc/nginx/sites-available/default.new

RUN mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.backup \
  && mv /etc/nginx/sites-available/default.new /etc/nginx/sites-available/default \
  && nginx -t

# service nginx start
# service php8.1-fpm start
