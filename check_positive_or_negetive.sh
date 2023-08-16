#!/bin/bash

echo "Enter a number"
read num

if [ $num -lt 0 ]
then 
echo "Negetive Number"
elif [ $num -gt 0 ]
then 
echo "Positive Number"
else
echo "Neither Positive nor Negetive Number"
fi