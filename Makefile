all:
	docker-compose -f ./srcs/docker-compose.yaml up --build
up:
	docker-compose -f ./srcs/docker-compose.yaml up
down:
	docker-compose -f ./srcs/docker-compose.yaml down
clean:
	rm -rf /home/kseed/data/wp/*
	rm -rf /home/kseed/data/db/*
	docker volume rm db
	docker volume rm wp
fclean: clean
	docker rmi -f $$(docker images -qa)
