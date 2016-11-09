#!/bin/bash
read -p "input array number : " -a nums
max_far=0
max_end=0
for ((i=0;i< ${#nums[@]};i++))
do
        max_end=$(($max_end + ${nums[$i]}))
        if [ $max_end -lt 0 ]
        then
                max_end=0
        fi
        if [ $max_far -lt $max_end ]
        then
                max_far=$max_end
				  then
                max_end=0
        fi
        if [ $max_far -lt $max_end ]
        then
                max_far=$max_end
        fi
done
echo "Maxninum cotiguous sum is " $max_far

