#!/usr/bin/env bash

wget -qO- https://get.docker.com/ | sh
apt-get install -y python-pip
pip install docker-compose
