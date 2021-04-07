#!/bin/bash
set -e

cd /home/appuser

git clone -b monolith https://github.com/express42/reddit.git

cd /home/appuser/reddit && bundle install

echo '[Unit]
Description=Puma-server

[Service]
ExecStart=/usr/local/bin/puma -d --dir /home/appuser/reddit

[Install]
WantedBy=multi-user.target
' > /etc/systemd/system/rd-puma.service

chmod 664 /etc/systemd/system/rd-puma.service

systemctl daemon-reload
