for ((i=1; i<=5; i++))
do
Random=$(((RANDOM%90)+10))
sum=$(($sum+$Random))
avg=$(($sum/5))
done 
echo "the sum is " $sum
echo "the avg is " $avg