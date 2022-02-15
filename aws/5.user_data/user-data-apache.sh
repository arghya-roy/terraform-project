#!/bin/bash

########################################
##### USE THIS WITH AMAZON LINUX 2 #####
########################################

# get admin privileges
sudo su

# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
service httpd start
echo "Hello World from $(hostname -f)" > /var/www/html/index.html