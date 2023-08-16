#!/bin/bash

echo "enter size"
read n

i=1
max=0;

echo "enter numbers"
while [ $i -le $n ]
do
read num
if [ $max -lt $num ]
then
    max=$(($num))
fi
i=$((i + 1))
done
echo $max