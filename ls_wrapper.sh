#!/bin/bash

if [-z $1]
then
    dir='.'
else
    dir=$1
fi

i=0
for file in `ls $dir`
do
    let "i += 1"
    echo "$i: $file"
done

exit 0