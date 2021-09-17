#!/usr/bin/env bash
chmod 744 ./nginx.config
cp ./nginx.config /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/nginx.config /etc/nginx/sites-enabled
rm -f /etc/nginx/sites-available/default
sed -i "s/sites-enabled\/*/sites-enabled\/\*\.\*/" /etc/nginx/nginx.conf
exec "$@"