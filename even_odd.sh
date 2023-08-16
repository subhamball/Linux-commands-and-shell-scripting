read -p "enter two number : " num

if [ $(($num %2)) -eq 0 ]
then
    echo "even"
else
    echo "odd"
fi