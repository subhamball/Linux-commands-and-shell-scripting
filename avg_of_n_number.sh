echo "enter size "
read n

sum=0
i=1
echo "enter numbers"
while [ $i -le $n ]
do
read num
sum=$(($sum + $num))
i=$((i + 1))
done
avg=$(echo $sum / $n | bc -l )
echo $avg

printf '%0.2f' "$avg"