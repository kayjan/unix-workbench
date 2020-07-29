function guess {
  echo "Guess the number of files in this directory"
  read input
  local ans=$(ls | wc -l)

  if [[ $input > $ans ]]
  then
    echo "Wrong guess! Try a lower number"
    echo
  elif [[ $input < $ans ]]
  then
    echo "Wrong guess! Try a larger number"
    echo
  else
    echo "Correct! The answer is $ans"
    let guessing=false
  fi
}

guessing=true
while [[ $guessing == true ]]
do
  guess
done
