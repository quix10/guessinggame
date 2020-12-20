README.md: guessinggame.sh
	echo "# Guessing game" > README.md 
	echo $(shell date) >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
