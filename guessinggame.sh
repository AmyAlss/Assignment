#!/bin/bash
#File: guessinggame.sh 

function getGuess {
echo "Guess how many files are are in this directory."
read guess
}

getGuess

num_files=$(ls | wc -l)

while [[ $guess -ne $num_files ]]
do

if [[ $guess -gt $num_files ]]
then
	echo "Your guess was too high."
elif [[ $guess -lt $num_files ]]
then
	echo "Your guess was too low."
fi
echo "Guess again"
read guess
done 

if [[ $guess -eq $num_files ]]
then
        echo "Congratulatons, you guessed correct!"
fi
