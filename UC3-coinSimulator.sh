#!/bin/bash -x

headsCount=0;
tailsCount=0;

while [[ $headsCount -lt 21 && $tailsCount -lt 21 ]]
do
	Coin=$(($RANDOM % 2))

	if [ $Coin -eq 0 ]
	then
		echo "HEADS"
		((headsCount++))
	else
		echo "TAILS"
		((tailsCount++))
	fi
done

if [ $headsCount -gt $tailsCount ]
then
	echo "Heads won by $(($headsCount - $tailsCount)) count"
elif [ $headsCount -eq $tailsCount ]
then
	echo "Match Tied!!!"
else
	echo "Tails won by $(($tailsCount - $headsCount)) count"
fi
