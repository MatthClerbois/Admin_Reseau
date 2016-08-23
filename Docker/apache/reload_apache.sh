#!/bin/bash

#reload le service apache

docker exec apache a2dissite www.wt5mc.ephec-ti.be
docker exec apache a2dissite intranet.wt5mc.ephec-ti.be
docker exec apache a2dissite b2b.wt5mc.ephec-ti.be
docker exec apache service apache2 reload

docker exec apache a2ensite www.wt5mc.ephec-ti.be
docker exec apache a2ensite intranet.wt5mc.ephec-ti.be
docker exec apache a2ensite b2b.wt5mc.ephec-ti.be
docker exec apache service apache2 reload
