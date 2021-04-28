#!/bin/bash

if [ -z $1 ]; then
    echo "Undefined expression";
else
    echo $1 | bc;
fi
