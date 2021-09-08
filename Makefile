all:
	mkdir /home/$(USER)/data || true
	cp -r srcs/mariadb/srcs/database /home/$(USER)/data/
	cd srcs && docker-compose up --build

stop:
	cd srcs && docker-compose down
	-sudo rm -rf /home/$(USER)/data

clean:
	-docker image rm srcs_wordpress srcs_mariadb srcs_nginx
