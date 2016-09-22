#!/bin/env sh

time hadoop jar /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
teragen \
-Ddfs.blocksize=32M \
100000000 replica/terainput



#time hadoop jar \
#/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
#teragen \
#-Ddfs.blocksize=512M \
#-Dio.file.buffer.size=131072 \
#-Dmapreduce.map.java.opts=-Xmx1536m \
#-Dmapreduce.map.memory.mb=2048 \
#-Dmapreduce.task.io.sort.mb=256 \
#-Dyarn.app.mapreduce.am.resource.mb=1024 \
#-Dmapred.map.tasks=64 \
#10000000000  \
#/benchmarks/streaming-21/hduser1/terasort/terasort-input
