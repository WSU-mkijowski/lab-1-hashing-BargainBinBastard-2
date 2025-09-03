#!/bin/bash


touch coins.txt

thing=" "

for word in $(cat dictionary.txt); do
	thing=$(printf "%s" "$word" | sha256sum | awk '{print$1}')
	if [[ ${thing:0:3} == "000" ]]; then
		
		echo "$thing  - $word" >> coins.txt
	fi
	
done
