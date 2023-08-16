#!/bin/bash

echo "enter two number"
read num1
read num2

if [ $num1 -gt $num2 ]
then 
echo "$num1 is greater"
elif [ $num1 -lt $num2 ]
then
echo "$num2 is greater"
else
echo "two number are equal"
fi 