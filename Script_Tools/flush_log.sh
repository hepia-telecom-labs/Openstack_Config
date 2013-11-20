#!/bin/bash


echo "" > /var/log/controller1/cinder.log;
echo "" > /var/log/controller1/glance.log;
echo "" > /var/log/controller1/haproxy_access.log;
echo "" > /var/log/controller1/horizon.log;
echo "" > /var/log/controller1/nova.log;
echo "" > /var/log/controller1/haproxy_status.log;
echo "" > /var/log/controller1/keystone.log;

echo "" > /var/log/controller2/keystone.log;
echo "" > /var/log/controller2/cinder.log;
echo "" > /var/log/controller2/glance.log;
echo "" > /var/log/controller2/haproxy_access.log;
echo "" > /var/log/controller2/horizon.log;
echo "" > /var/log/controller2/nova.log;
echo "" > /var/log/controller2/haproxy_status.log;

echo "" > /var/log/node1/compute.log;

echo "" > /var/log/network1/network.log;
