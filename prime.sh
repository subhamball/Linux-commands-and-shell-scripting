read -p "enter a number : " num

flag=1
i=2

while [ $i -lt $num ]
do
if [ $(($num % $i)) -eq 0 ] 
then
flag=0
break
fi
i=$(($i +1))
done

if [ $flag -eq 1 ]
then
    echo "prime number"
else
    echo "not a prime number"
fi