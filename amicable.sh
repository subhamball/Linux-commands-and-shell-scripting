#amicable ---> # Check if the sum of divisors of one number is equal to the other number and vice versa

sum_divisors(){
    num=$1
    sum=0
    i=1
    while [ $i -lt $num ]
    do
    if [ $(($num % $i)) -eq 0 ]
    then
    sum=$(($sum + $i))
    fi
    i=$(($i + 1))
    done
    echo $sum
}

read -p "enter two number : " num1 num2
sum1=$(sum_divisors $num1)
sum2=$(sum_divisors $num2)

echo $sum1
echo $sum2

if [ $sum1 -eq $num2 ] && [ $sum2 -eq $num1 ]
then
    echo "$num1 and $num2 are amicable numbers."
else
    echo "$num1 and $num2 are not amicable numbers."
fi