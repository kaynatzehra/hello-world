target=21
min_difference=2
heads_count=0
tails_count=0
flips_count=0
while(( 1 ))
do
    (( flips_count++ ))
    echo -n "Flip-$flips_count is "
    toss=$(( RANDOM % 2 ))
    if(( toss == 0 ))
    then
        echo "Heads"
        (( heads_count++ ))
    else
        echo "Tails"
        (( tails_count++ ))
    fi
    
    diff_hctc=$(( heads_count - tails_count ))
    if(( heads_count == target && diff_hctc >= min_difference ))
    then
        echo "Heads won by $diff_hctc points"
        break
    elif(( tails_count == target && ${diff_hctc#-} >= min_difference ))
    then
         echo "Tails won by ${diff_hctc#-} points"
         break
    fi
    
done
echo "The Heads count is $heads_count and Tails Count is $tails_count"