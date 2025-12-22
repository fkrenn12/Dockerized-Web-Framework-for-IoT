#!/bin/sh
echo -n "Enter Username: "
read Username
docker exec -it mosquitto mosquitto_passwd /mosquitto/config/passwd $Username
docker exec -it mosquitto sh -c 'kill -HUP $(cat /mosquitto/config/pid)'

