#!/bin/bash

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list

apt update
apt install -y ruby-full ruby-bundler build-essential mongodb-org

systemctl start mongod
systemctl enable mongod

cd ~
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

puma -d
