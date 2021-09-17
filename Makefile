up:
	docker-compose -f ./srcs/docker-compose.yaml up
down:
	docker-compose -f ./srcs/docker-compose.yaml down
clean:
	rm -rf /home/kseed/data/wp/*
	rm -rf /home/kseed/data/db/*
	docker volume rm db
	docker volume rm wp
re:
	docker-compose -f ./srcs/docker-compose.yaml up --build
fclean:
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)
	docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi $$(docker images -qa)
