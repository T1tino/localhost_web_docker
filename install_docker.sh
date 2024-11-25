#!/bin/bash
set -e  # Detener el script en caso de errores

echo "=== Actualizando la lista de paquetes ==="
sudo apt update

echo "=== Instalando Docker ==="
sudo apt install docker.io -y

echo "=== Habilitando y arrancando el servicio Docker ==="
sudo systemctl enable docker --now

echo "=== Verificando la versión de Docker instalada ==="
docker --version

echo "=== Configurando Docker Compose ==="
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
echo "=== Descargando Docker Compose Plugin ==="
curl -SL https://github.com/docker/compose/releases/download/v2.30.3/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

echo "=== Verificando la versión de Docker Compose instalada ==="
docker compose version

echo "=== Configurando Docker para ejecutarse sin sudo ==="
sudo usermod -aG docker $USER
echo "=== Verificando el grupo 'docker' ==="
getent group docker

echo "=== Aplicando cambios de grupo con 'newgrp' ==="
newgrp docker

echo "=== Reiniciando el servicio Docker ==="
sudo service docker restart

echo "=== Verificando el estado de Docker con 'docker ps' ==="
docker ps

echo "=== Todo ha sido instalado y configurado correctamente ==="

