service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS'"
mysql -e "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%'"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -e root password $ROOT_PASS