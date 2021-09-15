FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install redis-server wget vim php-fpm php-mysql php-mbstring php-gd php-redis php-xml

COPY wp_conf.sh ./files/wp_conf.sh
COPY wp-config.php ./files/wp-config.php
RUN chmod 744 ./files/wp_conf.sh

ENTRYPOINT [ "bash ./files/wp_conf.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ]