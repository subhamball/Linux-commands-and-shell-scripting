i=1
while [ $i -le 100 ]
do
if [ $(($i % 2)) -eq 1 ]
then 
    echo $i
fi
i=$(($i + 1))
done
