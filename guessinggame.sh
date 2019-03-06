#!/bin/bash
status=0
correct=$(ls -p | grep -v / | wc -l)
function prompt {
echo "Guess how many files are in the current directory:"
read response
}

prompt

while [[ $response -ne $correct ]]
do
	if [[ $response -gt $correct ]]
	then
	echo "Your guess was high!"
	prompt
	else [[ response -lt $correct ]]
	echo "Your guess was too low!"
	prompt
fi
echo "WoW that was correct!"
done
