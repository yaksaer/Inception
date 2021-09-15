FROM debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server vim

COPY mysql_conf.sh ./
RUN chmod 744 ./mysql_conf.sh

ENTRYPOINT [ "./mysql_conf.sh" ]
CMD [ "mysqld" ]
