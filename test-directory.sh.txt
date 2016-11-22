#!/bin/bash
test $1
N=$1
for((i=1;i < $N;i++))
do
        subfolder="Army$i"
        mkdir $subfolder
        cd $subfolder
done
