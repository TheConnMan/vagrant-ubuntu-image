#!/usr/bin/env bash

export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
echo "export AWS_ACCESS_KEY_ID=$1" >> /root/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=$2" >> /root/.bashrc
echo "export AWS_ACCESS_KEY_ID=$1" >> /home/vagrant/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=$2" >> /home/vagrant/.bashrc
