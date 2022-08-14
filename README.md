# azure-webapp-php-sample

## Run
### Build locally and Run with Docker Compose

ローカル環境で Docker イメージをビルドして利用する場合は、下記コマンドを実行してください。

```bash
cd app
composer install
cp .env.example .env
php artisan key:generate
rm storage/logs/*

cd ..
docker-compose build
docker-compose up
```

`/var/www/html` にコードを格納しています。

## References

- [Configure a custom container - Azure App Service | Microsoft Docs](https://docs.microsoft.com/en-us/azure/app-service/configure-custom-container?pivots=container-linux#use-managed-identity-to-pull-image-from-azure-container-registry)
- [Managed Identity と GitHub Actions OIDC を使って Azure Container Registry の Admin user を不要にする - しばやん雑記](https://blog.shibayan.jp/entry/20220711/1657544090)