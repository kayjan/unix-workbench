function guessinggame {
  echo "Guess the number of files in this directory"
  ans=$(ls | wc -l)
  read input

  if [[ $input > $ans ]]
  then
    echo "Wrong! Try a lower number"
  elif [[ $input < $ans ]]
  then
    echo "Wrong! Try a larger number"
  else
    echo "Correct! Congrats!"
    let correct=true
  fi
}

correct=false
while [[ $correct == false ]]
do
  guessinggame
done
