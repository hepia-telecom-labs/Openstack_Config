#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import platform
import urllib2, urllib
import re
import datetime
import socket
import elasticsearch
import thread
from threading import Thread

#"Load-test-"+date.strftime("%Y-%m-%d %H:%M")


THREADS = 3

name_node=socket.gethostname()
#times_stamp=date.strftime("%Y-%m-%d")+"T"+date.strftime("%H:%M:%S.%s%Z")
messages_val="Testing Load, Cluster is unavailable########################################"
severity="ALERT"
nb_message=1000
date_start = datetime.datetime.now()



def load(message_all,severity_log,name_host,nb):
    es = elasticsearch.Elasticsearch("192.168.1.9:9200")
    for i in range(nb):
        date = datetime.datetime.now()
        times_stamp=date.strftime("%Y-%m-%dT%H:%M:%S.%fZ")
        index_name= "load-test-"+date.strftime("%Y-%m-%d")
        es.index(
            index=index_name,
            doc_type="Loader Type",
            #id=1,
            body={
                "@timestamp" : times_stamp,
                "@source_host": name_host,
                "@message": message_all,
                "syslog_severity":severity_log,
                }
        )

load(messages_val,severity,name_node,nb_message)
date_stop = datetime.datetime.now()

time_test = date_stop-date_start

print("Le test a duré: ")
print(time_test)

