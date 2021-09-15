FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx openssl vim

COPY nginx_conf.sh ./
COPY config ./
RUN chmod 744 ./nginx_conf.sh

ENTRYPOINT [ "./nginx_conf.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]
