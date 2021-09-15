#!/usr/bin/env bash
sed -i 's@listen = /run/php/php7.3-fpm.sock@listen = 9000@g' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/supervised no/supervised systemd/g' /etc/redis/redis.conf
mkdir -p /run/php
touch /run/php/php7.3-fpm.pid
chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*
if [ ! -f /var/www/html/wp-config.php ]; then
	mkdir -p /var/www/html/
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar /usr/local/bin/wp
	mv ./wp-config.php /var/www/html/
	cd var/www/html/
	wp core download --allow-root
	chmod 744 /wp-config.php
	wp core install --allow-root --url=kseed.42.fr --title=kseed \
		--admin_user=kseed --admin_password=kseed --admin_email=kseed@42.fr
	wp user create --allow-root yaksaer yaksaer@mail.ru --user_pass=yaksaer
fi
exec "$@"