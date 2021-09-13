start:
	./dir_maker.sh
	docker-compose docker-compose.yaml up
down:
	docker-compose docker-compose.yaml down