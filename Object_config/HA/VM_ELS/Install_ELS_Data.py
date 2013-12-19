__author__ = 'benoit'

import os
import urllib
import socket

os.system("yum -y update")
os.system("yum -y install java nano wget unzip")


urllib.urlretrieve('https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.zip',"elasticsearch-0.90.7.zip")
os.system("unzip -o elasticsearch-0.90.7.zip -d /var/lib/")
os.system("systemctl stop iptables")
os.system("systemctl disable iptables")

name_cluster= "cluster-els-90"
name_node=socket.gethostname()
number_replicas="6"

with open('/var/lib/elasticsearch-0.90.7/config/elasticsearch.yml', 'a') as file:
    # read a list of lines into data
    file.write("\n")
    file.write("\n")
    file.write("\n############Config ELS Node Data ############\n")
    file.write("\n")
    file.write("cluster.name: ")
    file.write(name_cluster)
    file.write("\n")
    file.write("node.name: ")
    file.write(name_node)
    file.write("\n")
    file.write("index.number_of_replicas: ")
    file.write(number_replicas)
    file.write("\n")
    file.write("node.data: true")
file.closed
os.system("/var/lib/elasticsearch-0.90.7/bin/elasticsearch")

os.system("echo '########## Finish #############'")
