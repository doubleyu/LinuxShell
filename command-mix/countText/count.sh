#!/bin/bash
arr=(bfwz fyws gjqt jzwl lqzg mdc qmrsy sgzj tlzz)

for (( i=0;i<${#arr[@]};i++ ));
do
echo ${arr[i]}:

hdfs dfs -du -s /user/hive/warehouse/${arr[i]}*.db/*/plat=*/date=2016-03-* | awk '{sum+=$1} END{print sum/1024/1024/1024 " G"}'

done

