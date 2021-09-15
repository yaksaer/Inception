FROM debian:buster

RUN apt-get update
<<<<<<< HEAD
RUN apt-get -y install default-mysql-server vim procps
=======
RUN apt-get -y install mariadb-server vim
>>>>>>> 1a4e1b187a0cd6dd0bd4d35204ac90f7a7e1d0ff

COPY mysql_conf.sh ./
RUN chmod 744 ./mysql_conf.sh

ENTRYPOINT [ "./mysql_conf.sh" ]
CMD [ "mysqld" ]
