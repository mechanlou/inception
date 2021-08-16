FROM debian:buster

RUN apt-get update -yq && apt-get install -yq php-fpm

COPY srcs /root/

WORKDIR /root

CMD bash setup.sh

