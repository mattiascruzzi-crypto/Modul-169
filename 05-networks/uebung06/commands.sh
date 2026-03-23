#!/bin/bash

# 1. Vorhandene Netzwerke anzeigen
docker network ls

# 2. Bridge Netzwerk inspizieren
# Zeigt Subnet, Gateway und verbundene Container
docker network inspect bridge

# 3. Ubuntu-Container interaktiv im Standard-Netzwerk starten
# docker run -it --name ubuntu_1 ubuntu:latest
# Im Container: ifconfig (zeigt IP im Bereich 172.17.x.x)
# exit zum Beenden

# 4. Eigenes (Custom) Netzwerk erstellen
docker network create \
  --driver=bridge \
  --subnet=10.10.10.0/24 \
  --gateway=10.10.10.1 \
  my_net

# 5. Überprüfen, ob das neue Netzwerk existiert
docker network ls

# 6. Details des neuen Netzwerks anzeigen
docker network inspect my_net
