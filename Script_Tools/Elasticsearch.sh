#!/bin/bash
# ssh -q  root@192.168.1.7 -i /root/key.pem sh "/root/Elasticsearch.sh `</dev/null` >nohup.out 2>&1 &"

yum -y update 
yum -y install java nano wget unzip
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.zip 
unzip -o elasticsearch-0.90.7.zip -d /var/lib/
systemctl stop iptables
systemctl disable iptables

