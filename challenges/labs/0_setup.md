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

OUTPUT group

```
postfix:x:89:
chrony:x:993:
sshd:x:74:
ec2-user:x:1000:
mysql:x:27:
pictures:x:1001:weiner
briges:x:1002:
christie:x:2500:
weiner:x:2501:
bridges:x:2502:christie
```

OUTPUT passwd
```
systemd-network:x:998:996:systemd Network Management:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
polkitd:x:997:995:User for polkitd:/:/sbin/nologin
tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
chrony:x:996:993::/var/lib/chrony:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
ec2-user:x:1000:1000:Cloud User:/home/ec2-user:/bin/bash
christie:x:2500:2500::/home/christie:/bin/bash
weiner:x:2501:2501::/home/weiner:/bin/bash
```