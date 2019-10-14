FROM minio/minio:RELEASE.2019-10-12T01-39-57Z

# required for dokku storage
RUN adduser -D -u 32769 -g dokku dokku
USER dokku

RUN mkdir -p /code
WORKDIR /code
COPY . /code

RUN mkdir -p /data
