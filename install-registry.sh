#!/bin/bash
sudo docker pull registry:0.8.1
sudo service consul stop
sudo service proxy stop
sudo mkdir /var/lib/registry
docker run -d --restart=always -e STORAGE_PATH=/var/lib/registry -e SEARCH_BACKEND=sqlalchemy -p 5000:5000 registry:0.8.1
