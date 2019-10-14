FROM minio/minio:RELEASE.2019-10-12T01-39-57Z

RUN mkdir -p /code
WORKDIR /code
COPY . /code

RUN mkdir -p /data
