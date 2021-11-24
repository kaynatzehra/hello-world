arr=(4, 2, 4, 5, 2, 3, 1)     
size =${#arr[@]}
echo $size

for (i = 0; i < $size-1; i++) 
do
  for (j = i + 1; j < $size; j++) 
do
 if [arr[i] == arr[j]]
then
 echo " the number is ${arr[i] + " "} "
else
echo " no terms "
done
 done

