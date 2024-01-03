#!/bin/bash
# Install Docker Compose
sudo curl -fsSL "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION:-1.25.4}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# Add the user to the Docker group
sudo usermod -aG docker vagrant