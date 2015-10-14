#!/usr/bin/env bash

export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
export AWS_DEFAULT_REGION=us-east-1
echo "export AWS_ACCESS_KEY_ID=$1" >> /root/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=$2" >> /root/.bashrc
echo "export AWS_DEFAULT_REGION=$2" >> /root/.bashrc
echo "export AWS_ACCESS_KEY_ID=$1" >> /home/vagrant/.bashrc
echo "export AWS_SECRET_ACCESS_KEY=$2" >> /home/vagrant/.bashrc
echo "export AWS_DEFAULT_REGION=$2" >> /home/vagrant/.bashrc

pip install awscli
