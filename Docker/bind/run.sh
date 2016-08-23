#!/bin/bash

docker run -ti --name "bind" --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.10" \
 -p 53:53/udp \
 -v "/home/matth/Docker/bind/data":"/data" \
 sameersbn/bind

