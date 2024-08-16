#!/bin/bash

# Update package index
sudo apt update

# Install dependencies
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the Docker stable repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package index again
sudo apt update

# Install Docker Engine and Docker CLI
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Install Docker Compose
#sudo apt install -y docker-compose
sudo apt-get install docker-compose-plugin

# Optional: Start Docker if not already started
sudo systemctl start docker

# Optional: Enable Docker to start on boot
sudo systemctl enable docker

# Verify Docker installation
sudo docker --version
sudo docker compose version
