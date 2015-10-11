#!/usr/bin/env bash

curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get install -y nodejs
npm install -g npm@latest
npm set init.author.name "theconnman"
npm set init.author.email "bcconn2112@gmail.com"
npm set init.author.url "http://theconnman.com"
