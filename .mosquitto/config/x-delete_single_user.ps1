$Username = Read-Host "Enter username"
docker exec -it mosquitto "sed -i '/^$Username/d' /mosquitto/config/passwd"
docker exec -it mosquitto sh -c 'kill -HUP $(cat /mosquitto/config/pid)'

