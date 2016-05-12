#!/bin/bash
arr=(active deposit pay reg_pay_deposit)
gamePath='/';


plats=(`ls $gamePath`);

for (( i=0; i<${#plats[@]}; i++ ))
do
#echo ${gamePath}${plats[i]}

for (( j=0; j<${#arr[@]}; j++ ))
do
echo hdfs dfs -put ${gamePath}${plats[i]}/${arr[j]}/*_2016-04-1{5,6}  ${gamePath}${plats[i]}/${arr[j]}/
done

done


