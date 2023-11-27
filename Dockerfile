FROM mysql:latest
COPY ./bookstoredb.sql /docker-entrypoint-initdb.d/