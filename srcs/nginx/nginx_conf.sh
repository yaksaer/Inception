#!/usr/bin/env bash
if [ ! -d /etc/ssl/private/keyout.key ]; then
	openssl req -x509 -nodes -days 10 -subj "/C=RU/ST=Russia/L=Moscow/O=School21/OU=21Moscow/CN=kseed" -newkey  rsa:2048 \
    -keyout /etc/ssl/keys/keyout.key \
    -out /etc/ssl/certs/sertif.crt
    mv ./nginx.conf /etc/nginx/
fi
chmod 744 /etc/nginx/nginx.conf
exec "$@"