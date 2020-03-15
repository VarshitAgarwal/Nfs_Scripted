#!/bin/bash

#Configure Nfs_Client in Given Machine
yum install nfs-utils
showmount -e  192.168.x.x
mkdir /nfs_client
mount -t nfs 192.168.0.15:/nfs_server /nfs_client
df -h
echo "Nfs Client is Configure Properly In The Given Machine you can check by above result"

