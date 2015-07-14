#!/usr/bin/env bash

apt-get install -y unzip
wget -q https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.23.zip
unzip -q *.zip
mv google_appengine /opt
rm *.zip
echo 'export PATH=$PATH:/opt/google_appengine/' >> /home/vagrant/.bashrc
