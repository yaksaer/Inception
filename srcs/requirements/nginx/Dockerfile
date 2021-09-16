FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx openssl vim

COPY nginx_conf.sh ./
COPY nginx.config ./
RUN chmod 744 ./nginx_conf.sh
RUN chmod 744 ./nginx.config

ENTRYPOINT [ "./nginx_conf.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]
