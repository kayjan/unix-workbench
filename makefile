all: title date num_lines

title:
	echo "Guessing Game" > README.md
	echo "" >> README.md

date:
	echo `date +%d%m%Y` >> README.md
	echo "" >> README.md

num_lines:
	echo "Number of lines of code: $(shell < guessinggame.sh wc -l)" >> README.md

clean:
	rm README.md
