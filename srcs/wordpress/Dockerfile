FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install php-fpm php-mysql php-xml php-mbstring php-gd php-redis redis-server wget

COPY wp_conf.sh ./files/wp_conf.sh
COPY wp-config.php ./files/wp-config.php

CMD bash ./files/wp_conf.sh