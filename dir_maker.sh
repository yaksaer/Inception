if [ ! -d /home/kseed/files ]; then
	mkdir /home/kseed/files
if [ ! -d /home/kseed/files/wp ]; then
	mkdir /home/kseed/files/wp
if [ ! -d /home/kseed/files/db ]; then
	mkdir /home/kseed/files/db
fi
exec "$@"