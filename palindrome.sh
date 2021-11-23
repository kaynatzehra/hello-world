echo "Enter No : "
read n

m=$n
rev=0

while [ $n -gt 0 ]
do
            x=`expr $n % 10`
            rev=`expr $rev \* 10 + $x`
            n=`expr $n / 10`
done

if [ $m = $rev ]
then
            echo " $m is Palindrome"
else
            echo " $m is not Palindrome"
fi