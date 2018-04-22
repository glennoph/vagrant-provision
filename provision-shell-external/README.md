# provision-shell-external
vagrant provision via external shell script
shell script *nginx-install.sh* will do the following: 
- install nginx if it is not installed
- remove the html dir with link to vagrant html dir, if that has not been done

After vagrant provision test by pointing to url [localhost:8080](http://localhost:8080)

