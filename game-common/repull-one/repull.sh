#!/bin/bash
i=0;
while read line
do
if [ "${#line}" = 0 ] 
then continue;
fi
i=`expr $i + 1`
#echo "File:${line}"
arrs[$i]=${line}
done < text

RunningJob=${arrs[1]}
Game=${arrs[2]}
Date=${arrs[3]}
Date1=`echo ${Date} | tr -d '-'`
Name=${arrs[4]}
echo
echo 'oozie job -oozie http://hadoop-c1-r1-f1-s2:11000/oozie  -kill '${RunningJob};
echo
echo 'hdfs dfs -rm /user/hive/warehouse/'${Game}'/*/plat=*/date='${Date}'/'${Name}'_*.txt'
echo
echo 'grep -v _'${Date1}' hdfsLogFileList.txt > hdfsLogFileList_new.txt'
echo
echo 'hdfs dfs -copyFromLocal -f hdfsLogFileList_new.txt /data/mokylin/qmroverseaskr/log/logsinfo/hdfsLogFileList.txt'
echo
echo 'oozie job --oozie http://hadoop-c1-r1-f1-s2:11000/oozie -config ./job.properties -run'

