read -p "Enter first number: " num_1
read -p "Enter second number: " num_2
read -p "Enter third number: " num_3
echo "The given three numbers are: $num_1 $num_2 $num_3"

first_computation=$(( num_1 + num_2 * num_3 ))
second_computation=$(( num_1 * num_2 + num_3 ))
third_computation=$(( num_3 + num_1 / num_2 ))
fourth_computation=$(( num_1 % num_2 + num_3 ))
echo "$num_1 + $num_2 * $num_3 = $first_computation"
echo "$num_1 * $num_2 + $num_3 = $second_computation"
echo "$num_3 + $num_1 / $num_2 = $third_computation"
echo "$num_1 % $num_2 + $num_3 = $fourth_computation"

declare -A dictionary
declare -a array

dictionary[first_computation]=$first_computation
dictionary[second_computation]=$second_computation
dictionary[third_computation]=$third_computation
dictionary[fourth_computation]=$fourth_computation

index=0
for computation in ${!dictionary[@]}
do 
    array[index++]=${dictionary[$computation]}
done

echo "The computation results array is"
echo ${array[@]}

size=${#array[@]}
for(( i = 0; i < size - 1; i++ ))
do
    swapped=0
    for(( j = 0; j < size - i - 1; j++))
    do
        if((array[j] > array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
            swapped=1
        fi
    done
    if((swapped==0))
    then
        break
    fi
done

echo "The Computation results sorted in ascending order are: "
echo ${array[@]}