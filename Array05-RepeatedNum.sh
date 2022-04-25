#!/bin/bash 

for ((i=0;i<100;i++))
do
	ele=$((i+1))
	array[$i]=$ele
done

for ((i=0;i<100;i++))
do
	if [ $((array[i]%11)) -eq 0 ]
	then
		echo "${array[i]}"
	fi
done
