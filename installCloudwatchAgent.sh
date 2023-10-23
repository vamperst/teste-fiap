#!/bin/bash

sudo apt update -y
sudo apt install nginx -y
sudo apt install awscli -y
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i amazon-cloudwatch-agent.de
sudo aws s3 cp s3://bootcamp-data-engineering-222/amazon-cloudwatch-agent.json /opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
sudo mkdir -p /usr/share/collectd
