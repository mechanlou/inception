all:
	mkdir /home/$(USER)/data || true
	cd srcs && docker-compose up --build

stop:
	cd srcs && docker-compose down
	-docker volume rm srcs_wordpress-files srcs_database

clean:
	-docker image rm srcs_wordpress srcs_mariadb srcs_nginx
	-sudo rm -rf /home/$(USER)/data
