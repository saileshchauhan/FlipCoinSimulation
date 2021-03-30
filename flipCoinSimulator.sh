#!/bin/bash/ -x

heads=0
tails=0

function flipcoin() {
	 result=$((RANDOM % 2))
   if [ $result -eq 0 ]
   then
      heads=$(($heads+1))
   else
      tails=$(($tails+1))
   fi
}


while [ $heads -ne 21 -a $tails -ne 21 ]
do
	flipcoin
done

if [ $heads -eq $tails ]
then
	while [ $(($heads-$tails)) -ne 2 -a $(($tails-$heads)) -ne 2 ]
	do
	flipcoin
	done
elif [ $heads -gt $tails ]
then
	echo "Heads Win " "Difference :"$(($heads-$tails))
elif [ $tails -gt $heads ]
then echo "Tails win " "Difference : "$(($tails-$heads))
fi
