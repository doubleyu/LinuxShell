#!/bin/bash
##for i in "$@" ; do

case $# in

*.jpg|*.abc|*.efg) echo "first";;
*.tga) echo "second";;
*) echo "default" 
exit;;
esac



##done
