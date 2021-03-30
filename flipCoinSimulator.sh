#!/bin/bash/ -x



heads=0
tails=0

while [ $heads -ne 21 -a $tails -ne 21 ]
do

	result=$((RANDOM % 2))
	if [ $result -eq 0 ]
	then
		heads=$(($heads+1))
	else
		tails=$(($tails+1))
	fi
done

if [ $heads -eq $tails ]
then
	echo "Tie : Heads "$heads
	echo "Tie : Tails "$tails
elif [ $heads -gt $tails ]
then
	echo "Heads Win " "Difference :"$(($heads-$tails))
elif [ $tails -gt $heads ]
then echo "Tails win " "Difference : "$(($tails-$heads))
fi
