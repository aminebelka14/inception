all:
	@echo "Starting Inception..."
	@sudo docker-compose -f srcs/docker-compose.yml up -d --build

re: clean all

stop:
	@sudo docker-compose -f srcs/docker-compose.yml stop

clean: stop
	@sudo docker-compose -f srcs/docker-compose.yml down -v

fclean: clean
	@sudo bash clean.sh
