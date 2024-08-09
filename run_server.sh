#!/bin/bash

# Step 1: Start the container
docker-compose up -d

chmod +x start_ams2_server.sh

# Step 2: Copy files to the container
docker cp server.cfg ams2-server-dedicated:/usr/games/Steam/steamapps/common/'Automobilista 2 - Dedicated Server'/server.cfg
docker cp start_ams2_server.sh ams2-server-dedicated:/usr/games/start_ams2_server.sh

# Step 3: Execute the start script inside the container
docker exec ams2-server-dedicated bash /usr/games/start_ams2_server.sh

# Step 4: Stop and remove the container once the server stops
docker-compose down --remove-orphans
