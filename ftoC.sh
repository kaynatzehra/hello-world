echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
 
if [ $choice -eq 1 ]
then
	echo -n "Enter temperature (C) : "
	read tc
	# formula Tf=(9/5)*Tc+32
	tf=$(((9/5) * $tc) + 32)
	echo " the c to f $tf"
elif [ $choice -eq 2 ]
then
	echo -n "Enter temperature (F) : "
	read tf
	# formula Tc=(5/9)*(Tf-32) 
	tc=$((5/9)*($tf-32))
	echo " the f to c $tc"
else
	echo "Please select 1 or 2 only"
	exit 1
fi