FROM debian:buster

RUN apt-get update -yq && apt-get install mariadb-server -yq

COPY srcs/50-server.cnf /root/
COPY srcs/setup.sh /root/

WORKDIR /root

CMD bash setup.sh
