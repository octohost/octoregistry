#!/bin/bash
sudo docker pull registry
sudo service consul stop
sudo service proxy stop
sudo mkdir /var/lib/registry
sudo docker run -d -e STORAGE_PATH=/var/lib/registry \
  -e SEARCH_BACKEND=sqlalchemy \
  -p 5000:5000 \
  registry
