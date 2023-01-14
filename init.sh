#!/bin/bash

function title(){
	echo -e "\033[01;32m${1}\033[00;37m"
}

title 'Instalando dependências'
pip install -r requirements.txt

title "Criando projeto"
django-admin startproject blog .

title "Executando migrate 1"
./manage.py migrate

title 'Permitindo executar o entrypoint'
chmod +x entrypoint.sh
