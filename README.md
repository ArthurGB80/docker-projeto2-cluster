# Docker Swarm Cluster with Vagrant

This repository contains a Vagrantfile and associated scripts for setting up a Docker Swarm cluster with four nodes: one manager node named `master` and three worker nodes named `node01`, `node02`, and `node03`.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

### Installing

1. Clone the repository:

bash git clone [https://github.com/arhurGB80/docker-projeto2-cluster.git](https://github.com/ArthurGB80/docker-projeto2-cluster)

2. Navigate to the project directory:

bash cd docker-projeto2-cluster

3. Start the Vagrant environment:

bash vagrant up

This will start the four virtual machines defined in the `Vagrantfile`. Each virtual machine will be provisioned with Docker installed and configured as per the scripts included in the repository.

## Usage

Once the Vagrant environment is up and running, you can interact with the Docker Swarm cluster. The `master` node is initialized as the manager of the swarm, and the `node01`, `node02`, and `node03` nodes are added as workers.

## Built With

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Docker](https://www.docker.com/)
