#!/bin/bash 

read -p "Enter size of array:" size
echo "Enter the elements of array:"

for ((i=0;i<size;i++))
do
	read ele
	array[$i]=$ele
done

Last=size
Second=$((size-1))
Third=$((size-2))
sum=0

for ((i=0;i<Third;i++))
do
	for ((j=i+1;j<Second;j++))
	do
		for ((k=j+1;k<Last;k++))
		do
			temp=$((array[i]+array[j]+array[k]))
			if [ $temp -eq $sum ]
			then
				echo "Elements which sum is Zero are:"
				echo "${array[i]}, ${array[j]}, ${array[k]}"
				flag=1
			fi
		done
	done
done

if [ "$flag" != 1  ]
then
	echo "There are no such elements."
fi
