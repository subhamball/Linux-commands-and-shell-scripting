#$1 will have the value 10 which is the value of a
#$2 will have the value 20 which is the value of b
add()
{
    sum=$(($1 + $2))
    echo "Sum = $sum"
}

a=10
b=20
#call the add function and pass the values
add $a $b