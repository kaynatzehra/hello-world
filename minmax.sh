Random=$(((RANDOM%900)+100))
min=0
max=0
for number in "$Random"
do
if[$number -gt $max]
then
max="$number"
fi
if[$number -lt $min]
then
min="$number"
fi
done
echo "max is : $max"
echo "min is : $min"

