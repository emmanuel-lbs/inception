
all:
	mkdir -p test 
	mkdir -p test
	docker-compose -f srcs/docker-compose.yml up

build:
	docker-compose -f srcs/docker-compose.yml build

down:
	docker-compose -f srcs/docker-compose.yml down

clean:
	docker-compose -f srcs/docker-compose.yml down --rmi all

fclean:
	rm -rf  /home/elabasqu/data/db
	rm -rf /home/elabasqu/data/wp
	docker-compose -f srcs/docker-compose.yml down --rmi all -v
	docker system prune -e

re:down build

	

.PHONY: all build down clean fclean re
