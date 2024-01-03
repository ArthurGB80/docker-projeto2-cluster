#!/bin/bash
# Initialize Docker Swarm on the master node
sudo docker swarm init --advertise-addr=${MASTER_IP:-192.168.50.10}
# Generate a token for the worker nodes to join the swarm
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh