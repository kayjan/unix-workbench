all: title date line

title:
	echo "Guessing Game Project" >> README.md
	echo "" >> README.md

date:
	echo `date +%d%m%Y` >> README.md
	echo "" >> README.md

line:
	echo "Total number of lines: $(shell < guessinggame.sh wc -l)" >> README.md

clean:
	rm README.md
