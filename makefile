all: title date line

title:
	echo "Guessing Game Project" >> README.md

date:
	echo `date +%d%m%Y` >> README.md

line:
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md