#!/bin/bash

if [ ! -x /usr/bin/nginx ]; then
  apt-get install -y nginx;
fi

# dft nginx dir /usr/share/nginx/html
# replace this with symlink to vagrant dir
if [ ! -L /usr/share/nginx/html ]; then
  rm -rf /usr/share/nginx/html
  ln -s /vagrant/html /usr/share/nginx/html
fi
