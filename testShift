#!/bin/bash
while [ -n "$(echo $1 | grep '-')" ]; do
case $1 in
	-a) echo "-a-a-a";;
	-b) echo "-b-b-b";;
	* ) echo "default"
	exit 1;
esac
shift
done

echo "the real $ 1 is $1";
