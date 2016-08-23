#!/bin/bash

docker run -ti --name "mail-webui" --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.50" \
 -v /home/matth/Docker/mailui:/var/lib/rainloop/data \
 -e NGINX=1 \
 jprjr/rainloop
