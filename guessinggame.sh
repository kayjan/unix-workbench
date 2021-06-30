function guessinggame() {
  ans=$(ls | wc -l)
  correct=false
 
  while [ $correct == false ]
  do
	echo "Guess the number of files in this directory"
	read input
	if [ $input -gt $ans ]
	then
		echo "Wrong! Try a lower number"
	elif [ $input -lt $ans ]
	then
		echo "Wrong! Try a larger number"
	else
		echo "Correct! Congrats!"
		let correct=true
	fi
  done
}

guessinggame
