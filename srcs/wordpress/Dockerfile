FROM debian:buster

RUN apt-get update -yq && apt-get install -yq php-fpm php-mysql

COPY srcs /root/

WORKDIR /root

CMD bash setup.sh

