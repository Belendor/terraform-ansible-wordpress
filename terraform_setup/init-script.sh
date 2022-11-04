#!/bin/bash
sudo apt-get update -y
sudo sudo apt-get install apache2 -y
sudo sudo apt-get install apache2 -y
sudo sudo systemctl enable apache2
sudo systemctl start apache2
echo "${file_content}!" > /var/www/html/index.html
