# provision-shell-external
## box: centos/7
## provision: shell
### shell steps
vagrant provision via external shell script for centos/7 box
shell script **java-install.sh** will do the following: 
- update repos
- install epel-release emacs
- install java8 jdk
- change SELinux to Permissive
