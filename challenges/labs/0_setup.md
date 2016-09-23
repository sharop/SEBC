AWS Region: us-west-1
AMI: ami-d1315fb1

MYSQL Public IP: 54.193.24.45


* ls /usr/java
```
[4] 10:45:19 [SUCCESS] ec2-54-193-24-45.us-west-1.compute.amazonaws.com
jdk1.8.0_101
jdk-8u101-linux-x64.tar.gz
```


* Add the following Linux accounts to all nodes

User christie with a UID of 2500

User weiner with a UID of 2501
Create the group pictures and add weiner to it

Create the group bridges and add christie to it



```
sudo groupadd pictures
sudo groupadd bridges

sudo useradd -u 2500 christie
sudo useradd -u 2501 weiner

sudo usermod -a -G pictures weiner
sudo usermod -a -G bridges christie
```



