#!/bin/bash
if [ -z "$(docker-compose ps -q)" ]; then
     echo "its not running"
     docker-compose up -d
else
     echo "its  running"
     docker-compose start
fi
fswatch -o server | xargs -n1 -I{} docker exec -d dockernodeenv_node_1 pm2 restart 0;
