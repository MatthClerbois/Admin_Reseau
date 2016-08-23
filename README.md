# Admin_Reseau
# run pour le conainer BIND
$docker run -ti --name "bind" --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.10" \
 -p 53:53/udp \
 -v "/home/matth/Docker/bind/data":"/data" \
 sameersbn/bind
 
# run pour le conainer APACHE
docker run -it --name apache --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.20" \
 -v "/home/matth/Docker/apache/www":"/var/www" \
 -v "/home/matth/Docker/apache/etc":"/etc/apache2" \
 -v "/home/matth/Docker/apache/log":"/var/log/apache2" \
 eboraas/apache-php 
 
# run pour le conainer NGINX
docker run -it --name nginx \
 --net "matth" --ip "29.05.92.30" \
 -p 80:80 -p 443:443 -p 3306:3306 \
 -v "/home/matth/Docker/nginx/etc":"/etc/nginx" \
 -v "/home/matth/Docker/nginx/log":"/var/log/nginx" \
 nginx 
 
# run pour le conainer MYSQL
docker run -itd --name "mysql" --restart "unless-stopped" \
 --net "matth" --ip "29.05.92.40" \
 -e MYSQL_USER=wt5mc -e MYSQL_PASSWORD=29mai92 \
 -e MYSQL_DATABASE=wt5mc.db -e MYSQL_ROOT_PASSWORD=azerty \
 -v "/home/matth/Docker/mysql/etc":"/etc/mysql/conf.d" \
 mysql:latest
# run pour le conainer MAIL
à venir
