#!/bin/bash

###
GREEN='\033[0;32m'
NC='\033[0m'
#####
echo -e "${GREEN}### Iniciando setup de Home-lab Infra ###${NC}"

# Crear estructura de directorios para el F5 compartido

echo "Creando directorios par NFS..."
sleep 1
sudo mkdir -p /srv/shared_data
sudo chown -R $USER:$USER /srv/shared_data

# Crear carpetas de configuracion para HAProxy

echo "Preparando configuracion de HAProxy...." 
sleep 1
mkdir -p ./config/haproxy
#permisos
echo "Ajustando permisos para escritura de los contenedores..."
sudo chmod -R 777 /srv/shared_data
# Crea archivo de prueba en el F5
 
echo '<h1>Datos compartidos desde NFS</h1>' > /srv/shared_data/index.html
 
# Instalar dependencias docker

sleep 1
# Verifica sudo
if ! sudo -v; then
  echo "Se requieren permisos sudo"
  exit 1
fi




if ! command -v docker &> /dev/null
then
   echo "Docker no encontrado. Instalando..."
   sudo apt update
   sudo apt install -y docker.io docker-compose
else
   echo "Docker ya esta instalado"
fi 

echo -e "${GREEN}### Setup finalizado! ####${NC}"
echo "Ejecuta: docker-compose up -d"
