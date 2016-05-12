#!/bin/bash
exitCodeCheck(){
if [ $1 -ne 0 ]; then
  echo $2 'error shell common line --------------------X !'
  exit $1
else
  echo $2 'success shell common line !'
fi
}

ls /

exitCodeCheck $? ls/
