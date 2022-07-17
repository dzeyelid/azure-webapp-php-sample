#!/bin/bash

sudo mv /var/www/html /var/www/html_original
sudo ln -s ${WORKSPACE_DIR}/app /var/www/html

sudo chown -R vscode:www-data ${WORKSPACE_DIR}/app/storage
sudo chmod -R ug+w ${WORKSPACE_DIR}/app/storage

sudo service php8.0-fpm start
sudo service nginx start
