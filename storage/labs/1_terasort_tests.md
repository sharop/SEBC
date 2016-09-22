# Teragen

I've made a script that includes.
```
#!/bin/env sh

time hadoop jar /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
teragen \
-Ddfs.blocksize=32M \
100000000 replica/terainput
```

The output is:
```
[ec2-user@persa ~]$ sh benchmark.sh
16/09/21 17:08:18 INFO client.RMProxy: Connecting to ResourceManager at bombay.sharop.net/172.31.25.155:8032
16/09/21 17:08:19 INFO terasort.TeraSort: Generating 100000000 using 2
16/09/21 17:08:19 INFO mapreduce.JobSubmitter: number of splits:2
16/09/21 17:08:19 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1474462051234_0008
16/09/21 17:08:19 INFO impl.YarnClientImpl: Submitted application application_1474462051234_0008
16/09/21 17:08:19 INFO mapreduce.Job: The url to track the job: http://bombay.sharop.net:8088/proxy/application_1474462051234_0008/
16/09/21 17:08:19 INFO mapreduce.Job: Running job: job_1474462051234_0008
16/09/21 17:08:25 INFO mapreduce.Job: Job job_1474462051234_0008 running in uber mode : false
...
...
...
16/09/21 17:10:54 INFO mapreduce.Job: Job job_1474462051234_0008 completed successfully
16/09/21 17:10:54 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=240044
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=170
                HDFS: Number of bytes written=10000000000
                HDFS: Number of read operations=8
```

When i was trying to run the terasor, i got insificient space because dont empty the .trash, then i solved with:

```
sudo -u hdsf hdfs dfs -expunge
```

The teragen cmd is the next.

```
#!/bin/env sh

time hadoop jar /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
terasort \
-Ddfs.blocksize=32M \
-Dio.file.buffer.size=131072 \
-Dmapreduce.map.java.opts=-Xmx1536m \
-Dmapreduce.map.memory.mb=2048 \
-Dmapreduce.map.output.compress=true \
-Dmapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.Lz4Codec \
-Dmapreduce.reduce.java.opts=-Xmx1536m \
-Dmapreduce.reduce.memory.mb=2048 \
-Dmapreduce.task.io.sort.factor=100 \
-Dmapreduce.task.io.sort.mb=768 \
-Dyarn.app.mapreduce.am.resource.mb=1024 \
-Dmapred.reduce.tasks=100 \
-Dmapreduce.terasort.output.replication=1 \
replica/terainput \
replica/teraoutput

```

However did not run because was induficient space to run, that was solved with the cache.

```
* Setting up Cache Directory
sudo -u hdfs hdfs cacheadmin -addPool teraTest
sudo -u hdfs hdfs cacheadmin -addDirectiver -path replica/terainput -pool teraTest
sudo -u hdfs hdfs cacheadmin -listPools -stats teraTest
sudo -u hdfs hdfs dfsadmin -report
```

