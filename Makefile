start:
	./dir_maker.sh
	docker-compose -f docker-compose.yaml up
down:
	docker-compose -f docker-compose.yaml down
re:
	./dir_maker.sh
	docker-compose -f docker-compose.yaml up --build