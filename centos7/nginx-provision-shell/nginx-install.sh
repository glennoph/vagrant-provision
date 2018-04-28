#!/bin/bash
# add repo
sudo yum update -y
sudo yum install -y epel-release emacs
if [ ! -x /etc/nginx ]; then
  # install nginx
  sudo yum install -y nginx
fi
# start nginx
sudo systemctl start nginx
# change SELinux to permissive
sudo setenforce Permissive

# dft nginx dir /usr/share/nginx/html
# replace this with symlink to vagrant dir
if [ ! -L /usr/share/nginx/html ]; then
  rm -rf /usr/share/nginx/html
  ln -s /vagrant/html /usr/share/nginx/html
fi
