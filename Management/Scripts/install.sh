#!/usr/bin/env bash
set -e


echo "Installing Squid Proxy..."
sudo DEBIAN_FRONTEND=noninteractive apt-get install squid --yes

# basic configure file
cd ./resources
sudo cp squid.conf /etc/squid/squid.conf

# Create initial credentials to access the proxy. username=fende and password=rnp#12345
sudo htpasswd -cb /etc/squid/squid_passwd fende rnp#1235
