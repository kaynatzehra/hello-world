echo " enter a number"
read num
rev=0
temp=$num
sod=0
while [ $temp>0 ]
do
sod+=$temp%10
temp=$temp/10
done

temp =$sod
while [$temp>0]
do
rev=rev*10 + temp%10
temp= temp/10
done

if [rev*sod==num]
then
echo "magic number"
else
echo " not magic number"
