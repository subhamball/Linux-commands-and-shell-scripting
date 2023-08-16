#!/bin/bash

echo "enter size of the array"
read size

#arr[size]

i=1
while [ $i -le $size ]
do

arr[i]=$((i))
i=$(($i + 1))
done

echo $arr