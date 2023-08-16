#!/bin/bash

echo "enter a number"
read num

sum=0

while [ $num -gt 0 ]
do
#mod=$(($num % 10))
sum=$(($num % 10 + $sum ))
num=$(($num / 10 ))
done
echo $sum