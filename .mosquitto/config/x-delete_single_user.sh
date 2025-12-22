#!/bin/sh
echo -n "Enter Username: "
read Username
docker exec -it mosquitto sed -i "/^$Username/d" /mosquitto/config/passwd
docker exec -it mosquitto sh -c 'kill -HUP $(cat /mosquitto/config/pid)'
