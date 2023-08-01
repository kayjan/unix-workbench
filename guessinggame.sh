#!/bin/bash

function guessinggame() {
  ans=$(ls | wc -l)
  correct=false
 
  while [ $correct == false ]
  do
	echo "Guess the number of files in this directory"
	read input
	if [ $input -gt $ans ]
	then
		echo "Too high, try a lower number!"
	elif [ $input -lt $ans ]
	then
		echo "Too low, try a higher number!"
	else
		echo "Correct!!"
		let correct=true
	fi
  done
}

guessinggame
