#!/usr/bin/env bash

apt-get remove ruby -y
curl -#LO https://rvm.io/mpapis.asc
gpg --import mpapis.asc
rm mpapis.asc
curl -sSL https://get.rvm.io | bash -s stable --ruby

echo "source /usr/local/rvm/scripts/rvm" >> /root/.bashrc
echo "source /usr/local/rvm/scripts/rvm" >> /home/vagrant/.bashrc
