FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget vim php-fpm php-mysql php-mbstring php-gd php-redis php-xml

COPY ./tools/wp_conf.sh ./wp_conf.sh
COPY ./tools/wp-config.php ./wp-config.php
RUN chmod +x ./wp_conf.sh

EXPOSE 9000

ENTRYPOINT [ "./wp_conf.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "--nodaemonize" ]
