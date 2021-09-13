service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS'"
mysql -u root -e "GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%'"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $ROOT_PASS