#!/usr/bin/env bash
sed -i 's@listen = /run/php/php7.3-fpm.sock@listen = 9000@g' /etc/php/7.3/fpm/pool.d/www.conf
mkdir -p /run/php
touch /run/php/php7.3-fpm.pid
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*
mkdir -p /var/www/html/
if [ ! -f /var/www/html/wp-config.php ]; then
	sed -i "s/base_host/${HOSTNAME}/g" /wp-config.php
	sed -i "s/base_name/${DB_NAME}/g" /wp-config.php
	sed -i "s/base_user/${DB_USER}/g" /wp-config.php
	sed -i "s/base_pass/${DB_PASS}/g" /wp-config.php
	mv /wp-config.php /var/www/html/
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	cd var/www/html/
	wp core download --allow-root
	wp core install --allow-root \
		--url=$WP_URL --title=$WP_TITLE \
		--admin_user=$WP_USER --admin_password=$WP_PASS \
		--admin_email=$WP_EMAIL
	wp user create --allow-root yaksaer yaksaer@mail.ru --user_pass=yaksaer
fi
exec "$@"
