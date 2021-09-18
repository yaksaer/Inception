#!/usr/bin/env bash
if [ ! -e /etc/nginx/sites-available/nginx.config ]; then
	chmod 744 ./nginx.config
	cp ./nginx.config /etc/nginx/sites-available
	ln -s /etc/nginx/sites-available/nginx.config /etc/nginx/sites-enabled
	rm -f /etc/nginx/sites-available/default
	sed -i "s/sites-enabled\/*/sites-enabled\/\*\.\*/" /etc/nginx/nginx.conf
fi
exec "$@"