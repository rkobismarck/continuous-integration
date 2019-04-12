#!/bin/bash

#Portainer Community.
sudo docker-compose -f ~/continuous-integration/scripts/compose-files/portainer/docker-compose.yml up -d 
sudo docker-compose -f ~/continuous-integration/scripts/compose-files/jenkins/docker-compose.yml up -d
