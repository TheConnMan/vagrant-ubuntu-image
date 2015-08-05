#!/usr/bin/env bash

apt-get install -y git
git clone https://gist.github.com/b6af664e23156669afa7.git
mv b6af664e23156669afa7/.gitconfig /home/vagrant
chown vagrant:vagrant /home/vagrant/.gitconfig
rm -rf b6af664e23156669afa7