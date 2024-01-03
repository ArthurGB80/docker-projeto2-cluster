#!/bin/bash
# Join the worker nodes to the swarm
docker swarm join --token ${WORKER_TOKEN:-SWMTKN-1-3pj8k0i4tn77bd93a0yxhgh36hxuef5q5oyg1732rztnfy29ll-a94q0ipwgrjs4xikzyb4yb3n5} ${MASTER_IP:-192.168.50.10}:2377