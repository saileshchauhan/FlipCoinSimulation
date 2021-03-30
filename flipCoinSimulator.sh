#!/bin/bash/ -x

echo "Enter Times to flip: "
read num

heads=0
tails=0
count=0
while [ $count -ne $num ]
do
	count=$(($count+1))
	result=$((RANDOM % 2))
	if [ $result -eq 0 ]
	then
		$((tails++))
	else
		$((heads++))
	fi
done
echo "Heads: " $heads
echo "Tails: " $tails
