read -p "enter a number : " num

rev_num=0
num1=$num

while [ $num -gt 0 ]
do
digit=$(($num % 10))
rev_num=$(($rev_num *10 + $digit))
num=$(($num / 10))
done

echo "reverse number is : $rev_num"

if [ $num1 -eq $rev_num ]
then
    echo "palindrom number"
else
    echo "not palimdrom"
fi