#!/bin/bash

# 1. Starten Sie den MariaDB-Container mit einem Volume
docker run -d --name my_mariadb_container \
  -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=mydatabase \
  -v mariadb_data:/var/lib/mysql -p 3306:3306 mariadb

# 2. Überprüfen Sie, ob der Container läuft
docker ps

# 3. Fügen Sie einen Eintrag in die Datenbank hinzu (Interaktiv in der Shell)
# docker exec -it my_mariadb_container mariadb -u root -p
# SQL Befehle:
# USE mydatabase;
# CREATE TABLE mytable (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255));
# INSERT INTO mytable (name) VALUES ('Mein erster Eintrag');

# 4. Überprüfen Sie die Einträge in der Datenbank
# SELECT * FROM mytable;

# 5. Beenden Sie die MariaDB-Shell
# exit

# 6. Stoppen und entfernen Sie den MariaDB-Container
docker stop my_mariadb_container
docker rm my_mariadb_container

# 7. Starten Sie den MariaDB-Container erneut mit demselben Volume
docker run -d --name my_mariadb_container \
  -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=mydatabase \
  -v mariadb_data:/var/lib/mysql -p 3306:3306 mariadb

# 8. Überprüfen Sie die Daten erneut (Interaktiv)
# docker exec -it my_mariadb_container mysql -u root -p
# USE mydatabase;
# SELECT * FROM mytable;
