# azure-webapp-php-sample

## Run with Docker Compose

Set a environment variable `ACR_REGSITRY` with some word for local build. Then run `build` and `up`.

```bash
cd app
composer install

export ACR_REGISTRY=local
docker-compose -f docker-compose.yml -f local.docker-compose.yml build
docker-compose -f docker-compose.yml -f local.docker-compose.yml up
```

## Create resources on Microsoft Azure


## Deploy images to Azure Container Registry


## Run web application on Azure Web Apps for containers
