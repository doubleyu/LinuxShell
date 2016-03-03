#!/bin/bash
name=(aaa bbb ccc)
for i in "${name[@]}"
do
   name[$i]=$i
   echo ${name[$i]} #为方便检查，加了打印
done
