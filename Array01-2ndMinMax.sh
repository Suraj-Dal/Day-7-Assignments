#!/bin/bash 

FirstMax=0
SecondMax=0
SecondMin=0

function WithoutSort()
{
	for (( i=0;i<10;i++ ))
	do
        	if [ $FirstMax -lt $((array[i])) ]
        	then
                	SecondMax=$FirstMax
                	FirstMax=$((array[i]))
        	fi
	done
	FirstMin=$FirstMax
	for (( i=0;i<10;i++ ))
	do
        	if [ $FirstMin -gt $((array[i])) ]
        	then
                	SecondMin=$FirstMin
                	FirstMin=$((array[i]))
        	fi
	done
	echo "Array Elements are: ${array[@]}"
	echo "Second largest element from Array is: $SecondMax"
	echo "Second Smallest element from array is $SecondMin"
}

function WithSort()
{
	for (( i=0;i<10;i++ ))
	do
		for (( j=i+1;j<10;j++ ))
		do
			if [ $((array[i])) -gt $((array[j])) ]
			then
				a=$((array[i]))
				array[$i]=$((array[j]))
				array[$j]=$a
			fi
		done
	done
	echo "Sorted array elements are: ${array[@]}"
	echo "Second largest element is: ${array[8]}"
	echo "Second Smallest element is: ${array[1]}"
}

for (( i=0;i<10;i++ ))
do
	random=$((RANDOM%1000))
	array[$i]=$random
done

echo "1.Second Min Max Without Sorting Array"
echo "2.Second Min Max by Sorting Array"
read -p "Enter the your option:" opt

case $opt in
		"1" )
			WithoutSort array[]
		;;
		"2" )
			WithSort array[]
		;;
		*)
			echo "Invalid Option"
esac
