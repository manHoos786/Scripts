#!/bin/bash
sudo yum install wget unzip httpd -y > /dev/null

sudo systemctl start httpd
sudo systemctl enable httpd

mkdir -p /tmp/webfile
cd /tmp/webfile

wget https://www.tooplate.com/zip-templates/2109_the_card.zip > /dev/null
unzip 2109_the_card.zip > /dev/null
sudo cp -r 2109_the_card/* /var/www/html/ > /dev/null

systemctl restart httpd

rm -rf /tmp/webfile > /dev/null

