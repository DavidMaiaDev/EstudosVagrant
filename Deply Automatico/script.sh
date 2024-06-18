#!/bin/bash

echo "Atualizando o servidor..."
echo "-------------------------"
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando o Apache..."
echo "-------------------------"
sudo apt-get install apache2 -y

echo "Clonado o repositório da aplicação..."
echo "-------------------------"
sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git

cd mundo-invertido
sudo cp -R * /var/www/html


echo "IP atual do servidor:"
ip a