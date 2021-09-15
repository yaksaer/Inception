FROM debian:buster

RUN apt-get update
RUN apt-get -y install default-mysql-server vim

COPY mysql_conf.sh ./
RUN chmod 744 ./mysql_conf.sh

ENTRYPOINT [ "./files/mysql_conf.sh" ]
CMD [ "mysqld" ]
