read -p "enter three numbers : " num1 num2 num3


if [ $num1 -le $num2 ] && [ $num1 -le $num3 ]
then
    echo $num1
elif [ $num2 -le $num1 ] && [ $num2 -le $num3 ]
then
    echo $num2

else
    echo $num3
fi