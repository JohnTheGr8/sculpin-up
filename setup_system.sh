#!/bin/bash

###
# Update
###

apt-get -y install python-software-properties
add-apt-repository ppa:ondrej/php
apt-get update

###
# nginx
###

apt-get install -y nginx

cat > /etc/nginx/sites-enabled/sculpin.conf <<'EOF'
server {
    listen       *:80;
    server_name  192.168.56.100 sculpin;

    root         /home/vagrant/www/output_dev;
    index        index.html;

    error_page   404 /404.html;

    sendfile     off;

    access_log   /var/log/nginx/sculpin.access.log;
    error_log    /var/log/nginx/sculpin.error.log;

    location / {
        root    /home/vagrant/www/output_dev;
        index   index.html;
    }
}
EOF

###
# Install packages
###

apt-get -y install curl git zip unzip
apt-get -y install php5.6-fpm
apt-get -y install php5.6-dom
apt-get -y install php5.6-curl