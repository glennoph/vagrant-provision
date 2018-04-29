#!/bin/bash
# update 
sudo yum update -y
# install epel-release emacs
sudo yum install -y epel-release emacs
# install java 8 jdk
sudo yum install -y java-1.8.0-openjdk-devel
java -version
# set java_home ??? need to check this
sudo sh -c "echo export JAVA_HOME=/usr/lib/jvm/java-1.8.0/ >> /etc/environment"
echo JAVA_HOME=$JAVA_HOME
ls $JAVA_HOME
exit
if [ ! -x /etc/nginx ]; then
  # install nginx
  #sudo yum install -y nginx
fi
# start nginx
#sudo systemctl start nginx
# change SELinux to permissive
sudo setenforce Permissive

# dft nginx dir /usr/share/nginx/html
# replace this with symlink to vagrant dir
#if [ ! -L /usr/share/nginx/html ]; then
#  rm -rf /usr/share/nginx/html
#  ln -s /vagrant/html /usr/share/nginx/html
#fi
