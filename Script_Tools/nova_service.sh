#!/bin/bash

systemctl restart openstack-nova-api.service
systemctl restart openstack-nova-cert.service
systemctl restart openstack-nova-conductor.service
systemctl restart openstack-nova-consoleauth.service
systemctl restart openstack-nova-novncproxy.service
systemctl restart openstack-cinder-api.service
systemctl restart openstack-cinder-scheduler.service
systemctl restart openstack-glance-api.service
systemctl restart openstack-glance-registry.service
systemctl restart openstack-keystone.service
systemctl restart httpd.service




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



