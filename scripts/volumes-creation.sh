#!/bin/bash

#Volume creation for data persistance on our containers.
sudo docker volume create ci_jenkins
sudo docker volume create portainer_data