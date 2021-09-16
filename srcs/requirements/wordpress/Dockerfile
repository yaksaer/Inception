FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget vim php-fpm php-mysql php-mbstring php-gd php-redis php-xml

COPY wp_conf.sh ./wp_conf.sh
COPY wp-config.php ./wp-config.php
RUN chmod 744 ./wp_conf.sh
RUN chmod 744 ./wp-config.php

EXPOSE 9000

ENTRYPOINT [ "./wp_conf.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ]
