#!/bin/bash
read -p "Input Sequence:" -a nums
for ((i=0;i< ${#nums[@]};i++))
do
        ls[$i]=1;
done
for((i=1;i<${#nums[@]};i++))
do
        for((j=0;j<$i;j++))
        do
                 if [ \( ${nums[$i]} -gt ${nums[$j]} \) -a  \( ${ls[$i]} -lt $((${ls[$j]} + 1)) \)  ]
                 then
                         ls[$i]=$((${ls[$j]} + 1))
                 fi

        done
done
max=0
for((i=0;i<${#nums[@]};i++))
do
        if [ $max -lt ${ls[$i]} ]
        then
                 max=${ls[$i]}
        fi
done
echo "Length of LIS is "$max
