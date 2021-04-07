#!/bin/bash
set -e

cd /home/appuser

git clone -b monolith https://github.com/express42/reddit.git

cd /home/appuser/reddit && bundle install

echo "[Unit]
Description=Puma HTTP Server
After=network.target

[Service]
Type=simple
User=appuser
WorkingDirectory=/home/appuser/reddit
ExecStart=/bin/bash -lc 'puma'
Restart=always

[Install]
WantedBy=multi-user.target
" > /etc/systemd/system/puma.service

systemctl daemon-reload

systemctl enable puma.service
