
all : up

up : 
	mkdir -p /home/zkotbi/data/mariadb
	mkdir -p /home/zkotbi/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up

down : 
	docker-compose -f ./srcs/docker-compose.yml down

stop : 
	docker-compose -f ./srcs/docker-compose.yml stop

start : 
	docker-compose -f ./srcs/docker-compose.yml start

status : 
	docker ps
