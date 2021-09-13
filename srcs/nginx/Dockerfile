FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx
RUN mkdir files

COPY nginx_conf.sh ./files/nginx_conf.sh
COPY config ./files/

CMD bash ./files/nginx_conf.sh