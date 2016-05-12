#!/bin/bash

#cat text.txt | grep -o '|' | wc -l
OUTPUTDIR=add-output

printf_new() {
 str=$1
 num=$2
 v=$(printf "%-${num}s" "$str")
 echo "${v// /${str}}"
}

if [ -e ${OUTPUTDIR}/text.txt_txt ]
then
rm ${OUTPUTDIR}/text.txt_txt
else
mkdir ${OUTPUTDIR}
touch ${OUTPUTDIR}/text.txt_txt
fi

while read line
do

vertnum=`echo ${line} | grep -o '|' | wc -l`
addnum=$(( 50 - ${vertnum} ))
#echo ${addnum}

#printf '%*s' ${addnum} | tr ' ' "|"
echo ${line}`printf_new "|" ${addnum}` >> ${OUTPUTDIR}/text.txt_txt

done < text.txt

