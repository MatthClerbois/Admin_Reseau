#!/bin/bash

docker run -it --name apache --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.20" \
 -v "/home/matth/Docker/apache/www":"/var/www" \
 -v "/home/matth/Docker/apache/etc":"/etc/apache2" \
 -v "/home/matth/Docker/apache/log":"/var/log/apache2" \
 eboraas/apache-php 
