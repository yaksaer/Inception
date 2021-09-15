FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx openssl vim
RUN mkdir files

COPY nginx_conf.sh ./files/
COPY config ./files/
RUN chmod 744 ./files/nginx_conf.sh

ENTRYPOINT [ "bin/bash ./files/nginx_conf.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]
