#!/bin/bash

#Portainer Community.
sudo docker-compose -f ~/compose-files/portainer/docker-compose.yml up
sudo docker-compose -f ~/compose-files/jenkins/docker-compose.yml up
