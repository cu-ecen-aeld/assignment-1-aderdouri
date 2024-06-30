#!/bin/bash

writefile=$1
writestr=$2

if [[ $# -lt 2 ]]
then
    echo "Error: Please provide the writefile and writestr"
    exit 1
fi

echo $writestr > $writefile

if [[ $? -ne 0 ]]
then
    echo "Error: Could not write to $writefile"
    exit 1
fi
