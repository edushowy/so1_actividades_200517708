#!/bin/sh
GITHUB_USER="edushowy"
echo GITHUB_USER
curl -o data.json https://api.github.com/users/$GITHUB_USER
ID=$(cat data.json | jq '.id')
CREADO=$(cat data.json | jq '.created_at')
F=$(date +%d%m%y)
mkdir -p /tmp/$F/
echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREADO" > /tmp/$F/saludos.log
