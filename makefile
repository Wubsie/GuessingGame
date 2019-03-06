

readme:
	touch readme.md
	echo  "#Guessing Game Assignment" >> readme.md
	echo Make was ran on $(shell date) >> readme.md
	echo My guessing game has a total of  $(shell wc -l < guessinggame.sh) lines >>readme.md
