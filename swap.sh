#!/bin/bash
#swap using third veriable
read -p "enter two number : " num1 num2

echo "before swapping number1 = $num1  number2 = $num2"

temp=$num1
num1=$num2
num2=$temp

echo "after swapping number1 = $num1  number2 = $num2"