#!/bin/bash
echo "====== update nginx conf file ======"
echo ""
echo "Plese enter the path of the new nginx.conf file:"
read -p "Full path: " USER_NGINX_CONF_PATH
docker cp $USER_NGINX_CONF_PATH liran-nginx:/etc/nginx/conf/nginx.conf
docker exec -it liran-nginx nginx -s reload
echo "finished..."

