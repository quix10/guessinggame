#!/usr/bin/env bash

response=0

function giveAdvise {
	if [[ $1 -lt $2 ]]
	then
		echo "The answer is too low. Please try again."
	elif [[ $1 -gt $2 ]]
	then
		echo "The answer is too hight. Please try again."
	else
		echo "Congradulations! The answer is correct!"
	fi
}

correctNumberOfFiles=$(($(ls -l | wc -l)-1))

while [[ $response -ne $correctNumberOfFiles ]]
do
	echo "How many files are in the current directory? Please enter a number:"
	read response
	giveAdvise $response $correctNumberOfFiles
done
