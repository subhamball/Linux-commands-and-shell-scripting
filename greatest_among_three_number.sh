#!/bin/bash

echo "enter three numbers"
read num1
read num2
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]
then
    echo $num1
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]
then
    echo $num2

else
    echo $num3
fi