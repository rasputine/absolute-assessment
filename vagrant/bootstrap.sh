#! /usr/bin/env bash

apt-get update
apt-get install -y python-pip
apt-get install -y nginx
pip install -y flask
pip install -y uwsgi
mkdir -p /var/log/uwsgi
ln -nsf /etc/nginx/sites-enabled/flask /opt/vagrant/nginx/flask
rm /etc/nginx/sites-enabled/default
uwsgi --ini /opt/absolute/
service nginx start
