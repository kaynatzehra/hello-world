MAXCOUNT=10
count=1

while [ "$count" -le $MAXCOUNT ]; do
 number[$count]=$RANDOM
 let "count += 1"
done

echo "${number[*]}"


largest=${number[0]}
secondGreatest='unset'

for((i=1; i < ${#number[@]}; i++))
do
  if [[ ${number[i]} > $largest ]]
  then
    secondlargest=$largest
    largest=${number[i]}
  elif (( ${number[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${number[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${number[i]}
  fi
done

echo "secondGreatest = $secondGreatest"


smallest=${number[0]}
secondsmallest='unset'

for((i=1; i < ${#number[@]}; i++))
do
  if [[ ${number[i]} > $smaller ]]
  then
    secondsmallest=$smallest
    smallest=${number[i]}
  elif (( ${number[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${number[i]} < $secondsmallest ]]; }
  then
    secondsmallest=${number[i]}
  fi
done

echo "secondsmallest = $secondsmallest"