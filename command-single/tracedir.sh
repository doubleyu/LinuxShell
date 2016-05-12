#!/bin/bash
file=$1
echo $file
if [ -d "$file" ]; then
cd $file
~/testShell/tracedir.sh $(ls)
cd ..
fi
