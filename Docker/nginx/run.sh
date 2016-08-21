#!/bin/bash

docker run -it --name nginx \
 --net "matth" --ip "29.05.92.30" \
 -p 80:80 -p 443:443 \
 -v "/home/matth/Docker/nginx/etc":"/etc/nginx" \
 -v "/home/matth/Docker/nginx/log":"/var/log/nginx" \
 nginx 
