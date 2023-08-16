#!/bin/bash

echo "enter size"
read n

i=1
min=1000000000000;

echo "enter numbers"
while [ $i -le $n ]
do
read num
if [ $min -gt $num ]
then
    min=$(($num))
fi
i=$((i + 1))
done
echo $min