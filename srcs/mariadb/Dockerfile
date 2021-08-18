FROM debian:buster

RUN apt-get update -yq && apt-get install mariadb-server -yq

COPY srcs /root/

WORKDIR /root

CMD bash setup.sh
