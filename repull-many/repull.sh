#!/bin/bash
ConfigFile=${1:?"fileName missing."}
i=0;
while read line
do
if [ "${#line}" = 0 ] || [[ ${line} =~ ^#.* ]]
then continue;
fi
i=`expr $i + 1`
#echo "File:${line}"
arrs[$i]=${line}
done < ${ConfigFile}

RunningJob=${arrs[1]}
Game=${arrs[2]}
GamePre=${arrs[3]}
Date=(${arrs[4]})
DateA=(`echo ${arrs[4]} | tr -d '-'`)
HdfsLogFileListLoc=${arrs[5]}

dStr=""
for d in ${Date[@]}
do
dStr+=${d}','
done

#echo ${dStr%,}



daStr=""
for da in ${DateA[@]}
do
daStr+='_'${da}'|'
done

#echo ${daStr%|}

if [[ "$HdfsLogFileListLoc" =~ "-auto ".* ]]
then
HdfsLogFileListLoc='/data/mokylin/'${HdfsLogFileListLoc#-auto }'/log/logsinfo'
fi

#echo ${HdfsLogFileListLoc}


echo
echo 'oozie job -oozie http://hadoop-c1-r1-f1-s2:11000/oozie  -kill '${RunningJob};
echo
echo 'hdfs dfs -ls /user/hive/warehouse/'${Game}'/*/plat=*/date={'${dStr%,}'}/'${GamePre}'_*.txt'
echo
echo 'hdfs dfs -rm /user/hive/warehouse/'${Game}'/*/plat=*/date={'${dStr%,}'}/'${GamePre}'_*.txt'
echo
echo 'hdfs dfs -copyToLocal '${HdfsLogFileListLoc}'/hdfsLogFileList.txt ./'
echo
echo 'grep -vE "'${daStr%|}'" hdfsLogFileList.txt > hdfsLogFileList_new.txt'
echo
echo 'hdfs dfs -copyFromLocal hdfsLogFileList_new.txt '${HdfsLogFileListLoc}'/hdfsLogFileList.txt'
echo
echo 'hdfs dfs -copyFromLocal -f hdfsLogFileList_new.txt '${HdfsLogFileListLoc}'/hdfsLogFileList.txt'
echo
echo 'oozie job --oozie http://hadoop-c1-r1-f1-s2:11000/oozie -config ./job.properties -run'
echo
