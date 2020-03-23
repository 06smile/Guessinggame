#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	filenumber=$(pwd | ls -lA 2>/dev/null | egrep -c '^-')
	echo "How many files are there in the current directory? Please make a guess:"
	read response 
	
	while [[ "$response" != $filenumber ]]
	do
		if [[ ! $response =~ ^[0-9]+$ ]] 
		then
			echo "Your input is not valid. Please input a number:"
			read response
						
		elif [[ $response -lt $filenumber ]]
		then 
			echo "You guessed too low. Please continue to guess:"
			read response
			
		else
			echo "You guessed too high. Please continue to guess:"
				read response
		fi
	done
	echo  "Congratulations! You guessed right!"
}

guessinggame	