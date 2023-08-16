#!/bin/bash

echo "enter two number"

read num1
read num2

#sum=$(($1 + $2)) // for fommand line argument

sum=$(($num1 + $num2))
echo "sum = $sum"