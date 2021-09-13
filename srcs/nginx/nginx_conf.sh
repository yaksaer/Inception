if [ ! -d /etc/ssl/private/keyout.key ]; then
	openssl req -x509 -nodes -days 10 -subj "/C=RU/ST=Russia/L=Moscow/O=School21/OU=21Moscow/CN=kseed" -newkey  rsa:2048 \
    -keyout /etc/ssl/keyout.key \
    -out /etc/ssl/sertif.crt
    mv ./files/config /etc/nginx/
fi`
exec "$@"