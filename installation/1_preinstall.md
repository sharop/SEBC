#1_preinstall.md

Fisrt of all I've created 5 instances with the following features:

5 x m3.xlarge
20GB AMAZON gp2 (General Purpose 2 SSD) each one
60GB  Data Disk Attached to each one



##Filesystem Requirements

'''
-----

#!/usr/bin/env sh

sudo mkfs.ext4 /dev/xvdb
sudo mkdir /data1
sudo mount /dev/xvdb /data1
sudo echo "/dev/xvdb /data1 ext4 defaults,noatime 0" >> /etc/fstab
sudo mount -o remount /data1
----
'''


'''
#
# /etc/fstab
# Created by anaconda on Mon Nov  9 20:20:10 2015
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
UUID=379de64d-ea11-4f5b-ae6a-0aa50ff7b24d /                       xfs     defaults        0 0
/dev/xvdb /data1 ext4 defaults,noatime 0
'''
------
##Installing JDK

http://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_jdk_installation.html

alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_101/bin/java 2
alternatives --config java

alternatives --install /usr/bin/jar jar /usr/java/jdk1.8.0_101/bin/jar 2
alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_101/bin/javac 2
alternatives --set jar /usr/java/jdk1.8.0_101/bin/jar
alternatives --set javac /usr/java/jdk1.8.0_101/bin/javac

Add /etc/profile
export JAVA_HOME=/usr/java/jdk1.8.0_101
export JRE_HOME=/usr/java/jdk1.8.0_101/jre
export PATH=$PATH:/usr/java/jdk1.8.0_101/bin:/usr/java/jdk1.8.0_101/jre/bin
-------

##Disk Space
df -h /

5 GB on the partition hosting /var.
du -sh /var

500 MB on the partition hosting /usr.
du -sh /usr
´´´
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda2       20G  1.6G   19G   8% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
/dev/xvdb        59G   53M   56G   1% /data1
tmpfs           1.5G     0  1.5G   0% /run/user/1000
´´´
--------

## RAM
cat /proc/mem
free -m

--------


## Python

python --version

Python 2.7.5
--------

## Perl
perl --version
-------


## Swapines
echo 1 > /proc/sys/vm/swappiness
echo "vm.swappiness = 1" >> /etc/sysctl.conf
-------

## root reserved space
tune2fs -m 0 /dev/xvdb
-------

## nscd
AMAZON gp2 (General Purpose 2 SSD)
-Turn on
chkconfig --level 345 nscd on
service nscd start

------------

nscd -g

Change the /etc/nscd.conf file:
enable-cache hosts yes
enable-cache passwd no
enable-cache group no
enable-cache netgroup no
------

## File Handle Limits

* Increase maximun open files
echo hdfs - nofile 32768 >> /etc/security/limits.conf
echo mapred - nofile 32768 >> /etc/security/limits.conf
echo hbase - nofile 32768 >> /etc/security/limits.conf

# Bonus  Increase maximun processes
echo hdfs - nproc 32768 >> /etc/security/limits.conf
echo mapred - nproc 32768 >> /etc/security/limits.conf
echo hbase - nproc 32768 >> /etc/security/limits.conf
--------------