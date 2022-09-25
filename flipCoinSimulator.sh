#!/bin/bash -x

Coin=$(($RANDOM % 2))

if [ $Coin -eq 0 ]
then
	echo "HEADS"
else
	echo "TAILS"
fi
