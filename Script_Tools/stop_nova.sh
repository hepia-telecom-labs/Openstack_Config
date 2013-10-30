#!/bin/bash

systemctl stop openstack-nova-api.service
systemctl stop openstack-nova-cert.service
systemctl stop openstack-nova-conductor.service
systemctl stop openstack-nova-consoleauth.service
systemctl stop openstack-nova-novncproxy.service
systemctl stop openstack-cinder-api.service
systemctl stop openstack-cinder-scheduler.service
systemctl stop openstack-glance-api.service
systemctl stop openstack-glance-registry.service
systemctl stop openstack-keystone.service
systemctl stop httpd.service




sleep 3

systemctl status  openstack-nova-api.service
systemctl status  openstack-nova-cert.service
systemctl status  openstack-nova-conductor.service
systemctl status  openstack-nova-consoleauth.service
systemctl status  openstack-nova-novncproxy.service
systemctl status openstack-cinder-api.service
systemctl status openstack-cinder-scheduler.service
systemctl status openstack-glance-api.service
systemctl status openstack-glance-registry.service
systemctl status openstack-keystone.service
systemctl status httpd.service


