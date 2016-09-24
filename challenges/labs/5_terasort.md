
Terasort
```
time hadoop jar /opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort -Ddfs.blocksize=512M -Dio.file.buffer.size=131072 -Dmapreduce.map.java.opts=-Xmx1536m -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.output.compress=true -Dmapreduce.map.output.compress.codec=org.apache.hadoop.io.compress.Lz4Codec -Dmapreduce.reduce.java.opts=-Xmx1536m -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.task.io.sort.factor=100 -Dmapreduce.task.io.sort.mb=768 -Dyarn.app.mapreduce.am.resource.mb=1024 -Dmapred.reduce.tasks=100 -Dmapreduce.terasort.output.replication=1 tgen64 tsort64

```

job output

```
  6/09/24 03:02:13 INFO mapreduce.Job: Counters: 51
  File System Counters
  FILE: Number of bytes read=2847480300
  FILE: Number of bytes written=5677522171
  FILE: Number of read operations=0
  FILE: Number of large read operations=0
  FILE: Number of write operations=0
  HDFS: Number of bytes read=5120010218
  HDFS: Number of bytes written=5120000000
  HDFS: Number of read operations=534
  HDFS: Number of large read operations=0
  HDFS: Number of write operations=200
  Job Counters
  Killed reduce tasks=12
  Launched map tasks=78
  Launched reduce tasks=112
  Data-local map tasks=74
  Rack-local map tasks=4
  Total time spent by all maps in occupied slots (ms)=817398
  Total time spent by all reduces in occupied slots (ms)=1308036
  Total time spent by all map tasks (ms)=408699
  Total time spent by all reduce tasks (ms)=654018
  Total vcore-seconds taken by all map tasks=408699
  Total vcore-seconds taken by all reduce tasks=654018
  Total megabyte-seconds taken by all map tasks=837015552
  Total megabyte-seconds taken by all reduce tasks=1339428864
  Map-Reduce Framework
  Map input records=51200000
  Map output records=51200000
  Map output bytes=5222400000
  Map output 
  
  
  ```
