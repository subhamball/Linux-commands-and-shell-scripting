read -p "enter base and exponent : " base exp

echo $base $exp
result=1

while [ $exp -gt 0 ]
do
result=$(($result * $base))
exp=$(($exp -1))
done
echo $result