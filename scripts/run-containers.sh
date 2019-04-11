#!/bin/bash

#Portainer Community.
sudo docker-compose -f ~/continuous-integration/scripts/compose-files/portainer/docker-compose.yml up
sudo docker-compose -f ~/continuous-integration/scripts/compose-files/jenkins/docker-compose.yml up
