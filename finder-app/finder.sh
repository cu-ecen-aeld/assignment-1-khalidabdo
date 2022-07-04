#!/bin/sh

FILEDIR=$1
SEARCHSTR=$2

if [ $# -lt 2 ]
then 
    echo "please enter the path and search string"
    exit 1
fi

if [ -d "$FILEDIR" ]
then
    echo "directory exsist"
else
    echo "the entered director $FILEDIR not represent right directory"
    exit 1
fi

NUMBERFILES=$(find $FILEDIR -type f | wc -l)
COUNTWORD=$(grep -R $SEARCHSTR $FILEDIR | wc -l)

echo "The number of files are $NUMBERFILES and the number of matching lines are $COUNTWORD"