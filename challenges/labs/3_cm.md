```
mysql> SHOW GRANTS;
+----------------------------------------------------------------------+
| Grants for rmanuser@%                                                |
+----------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rmanuser'@'%' IDENTIFIED BY PASSWORD <secret> |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rmanuser'@'%'                   |
+----------------------------------------------------------------------+
2 rows in set (0.00 sec)


+------------------------------------------------------------------------------+
| Grants for hiveuser@localhost                                                |
+------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hiveuser'@'localhost' IDENTIFIED BY PASSWORD <secret> |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hiveuser'@'localhost'                   |
+------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SHOW GRANTS;
+-------------------------------------------------------------------------------+
| Grants for oozieuser@localhost                                                |
+-------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'oozieuser'@'localhost' IDENTIFIED BY PASSWORD <secret> |
| GRANT ALL PRIVILEGES ON `oozie`.* TO 'oozieuser'@'localhost'                  |
+-------------------------------------------------------------------------------+
2 rows in set (0.00 sec)
```:Wq

hdfs dfs -ls /user
```
[ec2-user@yogui ~]$ hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - christie supergroup          0 2016-09-23 13:51 /user/christie
drwxrwxrwx   - mapred   hadoop              0 2016-09-23 13:37 /user/history
drwxrwxr-t   - hive     hive                0 2016-09-23 13:38 /user/hive
drwxrwxr-x   - hue      hue                 0 2016-09-23 13:39 /user/hue
drwxrwxr-x   - oozie    oozie               0 2016-09-23 13:39 /user/oozie
drwxr-xr-x   - weiner   supergroup          0 2016-09-23 13:51 /user/weiner
```
```
[ec2-user@yogui ~]$ hadoop classpath
/etc/hadoop/conf:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop/lib/*:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop/.//*:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop-hdfs/./:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop-hdfs/lib/*:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop-hdfs/.//*:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop-yarn/lib/*:/opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop/libexec/../../hadoop-yarn/.//*:/opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/lib/*:/opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/.//*
[ec2-user@yogui ~]$
```


```
"items" : [ {
        "hostId" : "i-0c60b89b",
            "ipAddress" : "172.31.30.15",
                "hostname" : "mandibulin.hanna.net",
                    "rackId" : "/default",
                        "hostUrl" : "http://moroco.hanna.net:7180/cmf/hostRedirect/i-0c60b89b",
                            "maintenanceMode" : false,
                                "maintenanceOwners" : [ ],
                                    "commissionState" : "COMMISSIONED",
                                        "numCores" : 4,
                                            "numPhysicalCores" : 2,
                                                "totalPhysMemBytes" : 15332438016
                                                  }, {
                                                          "hostId" : "i-0e60b899",
                                                              "ipAddress" : "172.31.30.13",
                                                                  "hostname" : "manotas.hanna.net",
                                                                      "rackId" : "/default",
                                                                          "hostUrl" : "http://moroco.hanna.net:7180/cmf/hostRedirect/i-0e60b899",
                                                                              "maintenanceMode" : false,
                                                                                  "maintenanceOwners" : [ ],
                                                                                      "commissionState" : "COMMISSIONED",
                                                                                          "numCores" : 4,
                                                                                              "numPhysicalCores" : 2,
                                                                                                  "totalPhysMemBytes" : 15332438016
                                                                                                    }
```
