read -p "enter a number : " num

rev_num=0

while [ $num -gt 0 ]
do
digit=$(($num % 10))
rev_num=$(($rev_num *10 + $digit))
num=$(($num / 10))
done

echo "reverse number is : $rev_num"