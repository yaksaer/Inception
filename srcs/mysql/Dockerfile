FROM debian:buster

RUN apt-get update
RUN apt-get -y install default-mysql-server vim procp

COPY mysql_conf.sh ./files/
RUN chmod 744 ./files/mysql_conf.sh

CMD bash ./files/mysql_conf.sh