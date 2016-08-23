#!/bin/bash

docker run -itd --name "mysql" --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.40" \
 -e MYSQL_USER=wt5mc -e MYSQL_PASSWORD=29mai92 \
 -e MYSQL_DATABASE=wt5mc.db -e MYSQL_ROOT_PASSWORD=azerty \
 -v "/home/matth/Docker/mysql/etc":"/etc/mysql/conf.d" \
 mysql:latest
