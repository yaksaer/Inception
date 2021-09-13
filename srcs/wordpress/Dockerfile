FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install redis-server wget vim

COPY wp_conf.sh ./files/wp_conf.sh
COPY wp-config.php ./files/wp-config.php
RUN chmod 744 ./files/wp_conf.sh

CMD bash ./files/wp_conf.sh