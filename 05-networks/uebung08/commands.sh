#!/bin/bash

# 1. Erstellen Sie ein Netzwerk:
docker network create db-net

# 2. Starten Sie den MariaDB-Container
docker run -d \
  --name mariadb \
  --network db-net \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=mydatabase \
  mariadb:latest

# 3. Starten Sie den phpMyAdmin-Container
docker run -d \
  --name phpmyadmin \
  --network db-net \
  -e PMA_HOST=mariadb \
  -e PMA_USER=root \
  -e PMA_PASSWORD=rootpassword \
  -p 8080:80 \
  phpmyadmin/phpmyadmin

# Beenden und Aufräumen (optional)
# docker stop mariadb phpmyadmin
# docker rm mariadb phpmyadmin
# docker network rm db-net
