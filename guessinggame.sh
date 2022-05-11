#!/usr/bin/env bash

ask () {
echo "How many files are in the current directory?: "
}


ask
read guess

actual=`ls | wc -l`

while [ $actual -ne $guess ] 
do
	if [ $actual -lt $guess ] ; then 
		echo "Your guess is Higher!"
	else 
		echo "Your guess is Lower!"	
	fi
	echo "Please guess Again:"
	read guess
done

if [ $actual -eq $guess ]  ;then 
	echo "Congratiolations, You Guess is Right!"
fi

