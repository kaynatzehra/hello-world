echo "enter a number"
read num
hn=0
for((i=1;i<=$num;i++))
do
hn+=$((1/$i))
done
echo " the harmonic number is: $hn"