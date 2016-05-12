#!/bin/bash
dirlst=('/mnt/vbox/jzwl_log_test/4.6-4.25(200001)' '/mnt/vbox/jzwl_log_test/4.6-4.25(200003)')

for((i=0;i<${#dirlst[@]};i++))
do

cd ${dirlst[i]}
find . -name '*.tar' -exec tar zxvf {} \;
echo 'finish tar...'

find . -name '*.log' -exec grep 'RoleLevelUp' {} >> RoleLevelUp.txt \;
echo 'finish RoleLevelUp...'

find . -name '*.log' -exec grep 'Recharge' {} >> Recharge.txt \;
echo 'finish Recharge...'
cd '/mnt/vbox/jzwl_log_test/4.6-4.25(200001)'
find . -name '*.tar' -exec tar zxvf {} \;

done


#cd '/mnt/vbox/jzwl_log_test/test'
#find . -name '*.tar' -exec tar zxvf {} \;
#echo 'finish tar...'
#
#find . -name '*.log' -exec grep 'RoleLevelUp' {} >> RoleLevelUp.txt \;
#echo 'finish RoleLevelUp...'
#
#find . -name '*.log' -exec grep 'Recharge' {} >> Recharge.txt \;
#echo 'finish Recharge...'
#cd '/mnt/vbox/jzwl_log_test/4.6-4.25(200001)'
#find . -name '*.tar' -exec tar zxvf {} \;



#cd '/mnt/vbox/jzwl_log_test/4.6-4.25(200003)'
#find . -name '*.tar' -exec tar zxvf {} \;


