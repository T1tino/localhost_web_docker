# PHP MySQL Apache PHPMyAdmin Dockerized

Este es un punto de partida para comenzar un desarrollo hospedado en Docker para una aplicación PHP con MySQL.

## Pasos para instalar Docker en Ubuntu

Sigue estos pasos para instalar Docker en Ubuntu:

```bash
# install docker
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable docker --now
docker --version

# docker compose plugin
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.30.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
docker compose version

# usar docker sin sudo (necesario)
sudo usermod -aG docker $USER
getent group docker
newgrp docker
sudo service docker restart
docker ps
```

## For more information 
[visit this post](https://ayoubb.com/technology/dockerize-apache-mysql-php-stack/)

