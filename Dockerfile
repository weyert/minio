FROM minio/minio:latest

RUN mkdir -p /code
WORKDIR /code
COPY . /code

RUN mkdir -p /data
