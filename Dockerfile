FROM minio/minio:latest

RUN mkdir -p /code
WORKDIR /code
COPY . /code

RUN mkdir -p /data

# Create the application bucket for the storage
RUN mkdir -p /data/restauranto
