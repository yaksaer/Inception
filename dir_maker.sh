if [ ! -d /home/kseed/data ]; then
	mkdir /home/kseed/data
fi
if [ ! -d /home/kseed/data/wp ]; then
	mkdir /home/kseed/data/wp
fi
if [ ! -d /home/kseed/data/db ]; then
	mkdir /home/kseed/data/db
fi
if [ ! -d /home/kseed/data/nginx ]; then
	mkdir /home/kseed/data/nginx
fi
exec "$@"
