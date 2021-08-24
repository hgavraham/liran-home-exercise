#!/bin/bash
CONTID=$(docker ps | grep liran-nginx | awk '{print $1}')

echo "====== update nginx conf file ======"
echo ""
echo "Please enter the path of the new nginx.conf file:"
read -p "Full path: " USER_NGINX_CONF_PATH
echo "copy $USER_NGINX_CONF_PATH to liran-nginx:/etc/nginx/conf/nginx.conf"
docker cp $USER_NGINX_CONF_PATH liran-nginx:/etc/nginx/conf/nginx.conf
echo "reload nginx container id: $CONTID"
docker exec -it liran-nginx nginx -s reload
echo "finished..."

