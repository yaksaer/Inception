FROM debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server vim

COPY ./tools/mysql_conf.sh ./
RUN chmod +x ./mysql_conf.sh

EXPOSE 3306

ENTRYPOINT ["./mysql_conf.sh"]
CMD ["mysqld"]