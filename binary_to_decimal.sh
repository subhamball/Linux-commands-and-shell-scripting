#!/bin/bash
echo "enter binary number"
read n

binary_to_decimal (){
    i=0
    num=0

    while [ $n -ne 0 ]
    do
    digit=$(($n % 10))
    num1=`expr 2**$i`
    num=$(($num + $(($digit * $num1)) ))
    n=$(($n / 10))
    i=$(($i + 1))
    done
    echo "decimal number = $num"

}

binary_to_decimal