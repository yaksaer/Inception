start:
	./dir_maker.sh
	docker-compose -f docker-compose.yaml up
down:
	docker-compose -f docker-compose.yaml down
clean:
	sudo rm -rf /home/kseed/data/wp/*
	sudo rm -rf /home/kseed/data/db/*
re:
	./dir_maker.sh
	docker-compose -f docker-compose.yaml up --build
fclear:
	sudo docker rm $$(docker ps -qa)
	sudo docker volume rm $$(docker volume ls -q)
	sudo docker network rm $$(docker network ls -q)
