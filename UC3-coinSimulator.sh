#!/bin/bash -x

headsCount=0;
tailsCount=0;
targetCount=21;

while [[ $headsCount -lt $targetCount && $tailsCount -lt $targetCount ]]
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
