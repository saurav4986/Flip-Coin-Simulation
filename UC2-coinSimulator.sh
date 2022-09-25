#!/bin/bash -x

headsCount=0;
tailsCount=0;

for(( i=0; i<20; i++ ))
{
	Coin=$(($RANDOM % 2))

	if [ $Coin -eq 0 ]
	then
		echo "HEADS"
		((headsCount++))
	else
		echo "TAILS"
		((tailsCount++))
	fi
}

echo "Times head was flipped:"$headsCount
echo "Times tail was flipped:"$tailsCount
