if [ ! -f /var/www/html/wp-config.php ]; then
	wget -c https://wordpress.org/latest.tar.gz
	tar -xzf latest.tar.gz
	mv wordpress ../var/www/kseed/wordpress
	rm -rf latest.tar.gz
	cp ../files/wp-config.php ../var/www/kseed/wordpress
fi
exec "$@"