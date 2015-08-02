#!/usr/bin/env bash

sudo apt-get purge openjdk* -y
wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java7_64.sh && bash equip_java7_64.sh
JAVA_HOME='export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_65/'
PATH='export PATH=$PATH:$JAVA_HOME/bin'
echo $JAVA_HOME >> /home/vagrant/.bashrc
echo $PATH >> /home/vagrant/.bashrc
echo $JAVA_HOME >> /root/.bashrc
echo $PATH >> /root/.bashrc
