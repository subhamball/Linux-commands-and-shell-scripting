read -p "enter two number : " num1 num2

echo "before swapping number1 = $num1  number2 = $num2"

num1=$(($num1 + $num2))
num2=$(($num1 - $num2))
num1=$(($num1 - $num2))

echo "after swapping number1 = $num1  number2 = $num2"