#!/bin/bash
netscript="./netscript.py"
username="netscript"
passwd="xxxxxxx"

if [ -z "$1" ]
  then
    echo "No target file supplied"
    exit
fi
targetfile=$1

if [ -z "$2" ]
  then
    echo "No command file supplied"
    exit
fi
command=$2

for target in $( cat $targetfile ); do
    $netscript -t $target -u $username -p $passwd -v -i $command
done
