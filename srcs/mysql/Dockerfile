FROM debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server

COPY mysql_conf.sh ./files/

CMD bash ./files/mysql_conf.sh