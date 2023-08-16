read -p "enter the number :" num

num1=0
num2=1

echo -n "$num1 "
i=2
while [ $i -le $num ]
do
echo -n "$num2 "
temp=$num2
num2=$(($num1 + $num2))
num1=$temp
i=$(($i + 1))
done
