FROM debian:buster

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install nginx openssl vim
RUN openssl req -x509 -nodes -days 10 -subj "/C=RU/ST=Russia/L=Moscow/O=School21/OU=21Moscow/CN=kseed" -newkey  rsa:2048 \
    -keyout /etc/ssl/keyout.key \
    -out /etc/ssl/sertif.crt

COPY nginx_conf.sh ./
COPY nginx.config ./
RUN chmod 744 ./nginx_conf.sh
RUN chmod 744 ./nginx.config

EXPOSE 443

ENTRYPOINT [ "./nginx_conf.sh" ]
CMD [ "nginx", "-g", "daemon off;" ]
