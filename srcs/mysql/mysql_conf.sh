sed -i 's/bind-ad/#bind-ad/g' /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i 's/#port /port /g' /etc/mysql/mariadb.conf.d/50-server.cnf
chown -R mysql:mysql /var/lib/mysql
if [ ! -d var/lib/mysql/wp ]; then
	chmod 744 /var/run/mysqld/mysqld.sock
	service mysql start
	mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
	mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS'"
	mysql -u root -e "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%'"
	mysql -u root -e "FLUSH PRIVILEGES"
	mysqladmin -u root password $ROOT_PASS
fi
if [ ! -d /var/run/mysqld ]; then
	mkdir /var/run/mysqld
	touch /var/run/mysqld/mysqld.pid
	mkinfo /var/run/mysqld/mysqld.sock
fi