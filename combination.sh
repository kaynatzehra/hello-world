echo Program for Singlet Combination
declare -A singlet_Combination
singlet_Combination[H]=0
singlet_Combination[T]=0

read -p "Enter the no of times the coin should flip: " n

for (( i=0; i<n; i++ ))
do
  coin=$((RANDOM%2))
  case $coin in
    0)
	echo Flip-$i: Heads
	(( singlet_Combination[H]++ ))
	;;
    1)
 	echo Flip-$i: Tails
	(( singlet_Combination[T]++ ))
	;;
  esac
done
echo singlet_Combinations: ${!singlet_Combination[@]}
i=0
for coin_Side in ${!singlet_Combination[@]}
do
  arr[$i]=$(( ${singlet_Combination[$coin_Side]}*100/$n ))
  singlet_Combination[$coin_Side]=${arr[$i]}
  echo percentage of $coin_Side :: ${arr[$i]} %
  (( i++ ))
done
echo Sorted Combinations ::
echo ${arr[@]} | tr " " "\n" | sort -n | tr "\n" " " 
echo
echo

echo Program for Doublet Combination
declare -A doublet_Combination
doublet_Combination[HH]=0
doublet_Combination[TT]=0
doublet_Combination[TH]=0
doublet_Combination[HT]=0

read -p "Enter the no of times the coin should flip: " n
for (( i=0; i<n; i++ ))
do
  coin1=$((RANDOM%2))
  coin2=$((RANDOM%2))
  case $coin1$coin2 in
	00)
	   echo Flip-$i: Heads Heads
	   (( doublet_Combination[HH]++ ))
	   ;;
	01)
	   echo Flip-$i: Heads Tails
	   (( doublet_Combination[HT]++ ))
	   ;;
	10)
	   echo Flip-$i: Tails Heads
	   (( doublet_Combination[TH]++ ))
	   ;;
	11)
	   echo Flip-$i: Tails Tails
	   (( doublet_Combination[TT]++ ))
	   ;;
  esac
done
echo doublet_Combinations : ${!doublet_Combination[@]}
i=0
for coin_Side in ${!doublet_Combination[@]}
do
  arr[$i]=$(( ${doublet_Combination[$coin_Side]}*100/$n ))
  doublet_Combination[$coin_Side]=${arr[$i]}
  echo percentage of $coin_Side :: ${arr[$i]} %
  (( i++ ))
done
echo Sorted Combinations ::
echo ${arr[@]} | tr " " "\n" | sort -n | tr "\n" " " 
echo
echo

echo Program for Triplet Combination
declare -A triplet_Combination
triplet_Combination[HHH]=0
triplet_Combination[HHT]=0
triplet_Combination[HTH]=0
triplet_Combination[HTT]=0
triplet_Combination[THH]=0
triplet_Combination[THT]=0
triplet_Combination[TTH]=0
triplet_Combination[TTT]=0

read -p "Enter the no of times the coin should flip: " n
for (( i=0; i<n; i++ ))
do
  coin1=$((RANDOM%2))
  coin2=$((RANDOM%2))
  coin3=$((RANDOM%2))
  case $coin1$coin2$coin3 in
	000)
	   echo Flip-$i: Heads Heads Heads
	   (( triplet_Combination[HHH]++ ))
	   ;;
	001)
	   echo Flip-$i: Heads Heads Tails
	   (( triplet_Combination[HHT]++ ))
	   ;;
	010)
	   echo Flip-$i: Heads Tails Heads
	   (( triplet_Combination[HTH]++ ))
	   ;;
	011)
	   echo Flip-$i: Heads Tails Tails 
	   (( triplet_Combination[HTT]++ ))
	   ;;
	100)
	   echo Flip-$i: Tails Heads Heads
	   (( triplet_Combination[THH]++ ))
	   ;;
	101)
	   echo Flip-$i: Tails Heads Tails
	   (( triplet_Combination[THT]++ ))
	   ;;
	110)
	   echo Flip-$i: Tails Tails Heads 
	   (( triplet_Combination[TTH]++ ))
	   ;;
	111)
	   echo Flip-$i: Tails Tails Tails 
	   (( triplet_Combination[TTT]++ ))
	   ;;
  esac
done
echo triplet_Combinations : ${!triplet_Combination[@]}
i=0
for coin_Side in ${!triplet_Combination[@]}
do
  arr[$i]=$(( ${triplet_Combination[$coin_Side]}*100/$n ))
  triplet_Combination[$coin_Side]=${arr[$i]}
  echo percentage of $coin_Side :: ${arr[$i]} %
  (( i++ ))
done
echo Sorted Combinations ::
echo ${arr[@]} | tr " " "\n" | sort -n | tr "\n" " " 
echo
