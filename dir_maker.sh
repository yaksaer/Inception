if [ ! -d /home/kseed/files ]; then
	mkdir /home/kseed/files
fi
if [ ! -d /home/kseed/files/wp ]; then
	mkdir /home/kseed/files/wp
fi
if [ ! -d /home/kseed/files/db ]; then
	mkdir /home/kseed/files/db
fi
exec "$@"
