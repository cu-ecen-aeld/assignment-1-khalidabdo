#!/bin/sh

if [ $# -lt 2 ]
then 
    echo "please enter the path and search string"
    exit 1
else
    writefile=$1
    writestr=$2

    touch $writefile &> /dev/null

    echo $writestr > $writefile
fi