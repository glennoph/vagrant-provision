# provision-shell-external
vagrant provision via external shell script for centos/7 box
shell script **nginx-install.sh** will do the following: 
- update repos
- install epel-release emacs
- install nginx if it is not installed
- remove the html dir with link to vagrant html dir, if that has not been done
- change SELinux to Permissive, otherwise the page is forbidden on the browser

after vagrant provision test by pointing to url [localhost:8080](http://localhost:8080)

