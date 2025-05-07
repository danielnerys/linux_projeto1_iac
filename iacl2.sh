#!/bin/bash

echo "Iniciando Script de instalação"
echo 'Procurando atualizações...'

apt update -y

echo "Instalando atualizações"

apt upgrade -y

echo "Instalando APACHE"

apt install apache2 -y

echo "Instalando UNZIP"

apt install unzip -y

echo "Baixando arquivos do repositorio desejado...."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos....."

unzip main.zip

echo "Arquivos extraidos!"

echo "Vou colocar os arquivos na pasta do APACHE"

cp linux-site-dio-main/* /var/www/html -r

echo "Tudo feito!"

echo "Vou reiniciar para subir os serviços"

#reboot





