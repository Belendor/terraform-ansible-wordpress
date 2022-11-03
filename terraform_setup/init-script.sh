#!/bin/bash
sudo apt-get update -y
sudo sudo apt-get install apache2
sudo systemctl enable httpd
sudo systemctl start httpd
echo "${file_content}!" > /var/www/html/index.html
echo "${content}" > /root/.ssh/authorized_keys