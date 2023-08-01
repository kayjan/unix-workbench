all: title date num_lines

title:
	echo -e "Guessing Game\r\n" > README.md

date:
	echo -e "`date +%d%m%Y`\r\n" >> README.md

num_lines:
	echo "Number of lines of code: $(shell < guessinggame.sh wc -l)" >> README.md

clean:
	rm README.md
