echo "Guess the number of files in this directory"
ans=$(ls | wc -l)
read input

while [[ $input -ne $ans ]]
do
  echo "Wrong guess! Try again"
  read input
done

echo "Correct! The answer is $ans"

