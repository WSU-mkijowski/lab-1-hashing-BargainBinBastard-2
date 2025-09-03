#!/bin/bash


touch coins.txt

thing=" "
counter=0
for word in $(cat dictionary.txt); do
	nonce=$((10000 + RANDOM % 90000))
	thing=$(printf "%s%s" "$nonce" "$word" | sha256sum | awk '{print$1}')
	if [[ ${thing:0:3} == "000" ]]; then
		
		echo "$thing  - $nonce$word" >> coins.txt
		echo "$thing  - $nonce$word"
		counter=$((counter + 1))
	fi
	if [[ $counter -eq 3 ]]; then
	break
	fi
	
done
