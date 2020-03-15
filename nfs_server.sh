#!/bin/bash


#Configure the Nfs_Server
#install A required Package
echo "NFS_SERVER START TO CONFIGURE PLEASE WAIT FOR WHILE AND DO NOT PRESS ANY KEY"
yum install nfs-utils nfs-utils-lib -y
#restart A Service of Nfs
systemctl restart nfs
#Enable A Service
systemctl enable nfs
#chkconfig --level 35 nfs on
#configure Directory to shared
mkdir /nfs_server
echo "/nfs_server 192.168.0.17(rw,sync,no_root_squash)" > /etc/exports
#configure the Nfs_client
ssh root@192.168.x.x ./nfs_client.sh
