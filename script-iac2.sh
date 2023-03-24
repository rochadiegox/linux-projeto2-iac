#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/rochadiegox/linux-projeto-iac/blob/main/iac1.sh
unzip main.zip
cd linux-projeto-iac-main
cp -R * /var/www/html

