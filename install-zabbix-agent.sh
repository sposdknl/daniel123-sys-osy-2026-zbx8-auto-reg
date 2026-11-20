#!/bin/bash
set -e

apt-get update
apt-get install -y wget

wget https://repo.zabbix.com/zabbix/8.0/release/debian/pool/main/z/zabbix-release/zabbix-release_latest_8.0+debian13_all.deb
dpkg -i zabbix-release_latest_8.0+debian13_all.deb
apt-get update
apt-get install -y zabbix-agent2

systemctl enable zabbix-agent2
systemctl start zabbix-agent2   