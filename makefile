README.md: guessinggame.sh
	echo "# Guessing game" > README.md 
	echo "##"
	echo $(shell date) >> README.md
	echo "##"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
