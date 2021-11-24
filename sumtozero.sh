 arr=(0, -1, 2, -3, 1)
  n =${#array[@]
 
echo $n

 for (int i=0; i<$n-2; i++)
    
do
  for (int j=i+1; j<$n-1; j++)
do
  for (int k=j+1; k<$n; k++)
do
if [  (arr[i]+arr[j]+arr[k] == 0)]
then
echo "$(arr[i])"
echo "$(" ")"
echo "$(arr[j])"
echo "$(" ")"
echo "$(arr[k])"
echo "$("\n")"
found = true;
done
done
done
if [found==false]
then
echo "not exist"
