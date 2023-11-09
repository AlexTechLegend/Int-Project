#!/bin/bash

sudo cp /usr/share/nginx/html/current/index.html /usr/share/nginx/html/archive/index.html

echo "Archiving last version..."
sleep 1s

sudo cp /usr/share/nginx/html/edits/index.html /usr/share/nginx/html/current/index.html
echo "Uploading latest version..."
sleep 1s

#############################

sudo docker build -t nginx .

sudo docker tag nginx pnnlacr.azurecr.io/nginx:latest

sudo docker push pnnlacr.azurecr.io/nginx
 
