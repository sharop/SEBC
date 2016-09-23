Teragen Command

```
time hadoop jar /opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
teragen \
-Ddfs.blocksize=64M \
51200000 tgen64
```

OUTPUT TIME
```
real    0m13.482s
user    0m6.465s
sys     0m0.161s
```


Indicate many blocks were created to hold this file's data

*39 Blocks*