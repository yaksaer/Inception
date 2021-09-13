start:
	mkdir /home/kseed/files/wp
	mkdir /home/kseed/files/db
	docker-compose docker-compose.yaml up
down:
	docker-compose docker-compose.yaml down