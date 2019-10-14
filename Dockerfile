FROM minio/minio:RELEASE.2019-10-12T01-39-57Z


RUN mkdir -p /code
WORKDIR /code
COPY . /code

# required for dokku storage
RUN adduser -D -u 32769 -g dokku dokku
USER dokku

RUN mkdir -p /data
