#!/bin/bash

# Set the working directory
WORKING_DIR="/usr/games/Steam/steamapps/common/Automobilista 2 - Dedicated Server"

# Change to the working directory
cd "$WORKING_DIR" || exit

# Run the server command with Wine
sudo -u games /usr/bin/wine DedicatedServerCmd.exe
