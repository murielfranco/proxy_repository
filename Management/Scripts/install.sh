#!/usr/bin/env bash
set -e


echo "Installing Squid Proxy..."
sudo DEBIAN_FRONTEND=noninteractive apt-get install squid --yes

# basic configure file
sudo cp /home/fende/Management/Scripts/resources/squid.conf /etc/squid/squid.conf
sudo service squid restart

# Create initial credentials to access the proxy. username=fende and password=rnp#12345
sudo htpasswd -cb /etc/squid/squid_passwd fende rnp#1235
