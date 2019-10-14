# minio-dokku

[min.io](https://min.io/) on Dokku.

See here: https://github.com/slypix/minio-dokku

## Add env vars for access

```
dokku config:set minio MINIO_ACCESS_KEY=$(echo `openssl rand -base64 45` | tr -d \=+ | cut -c 1-20)
dokku config:set minio MINIO_SECRET_KEY=$(echo `openssl rand -base64 45` | tr -d \=+ | cut -c 1-32)
```

## Fix ports and SSL

Order is important because dokku-letsencrypt adds 443 port.

```
dokku proxy:report minio
dokku proxy:ports-add minio http:80:9000
dokku proxy:ports-remove minio http:9000:9000
dokku letsencrypt minio
dokku letsencrypt:cron-job --add minio
```

## Persistent storage

```
mkdir -p /var/lib/dokku/data/storage/minio
chown -R 32769:32769 /var/lib/dokku/data/storage/minio
dokku storage:mount minio /var/lib/dokku/data/storage/minio:/data
```

## License

MIT
