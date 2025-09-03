#!/bin/bash

touch salted_data.csv
line_number=0


current=" "
replacement=" "
for item in $(awk -F',' '{print $1}' quiz_data.csv); do
	echo "$item"
	line_number=$((line_number + 1))
	#check if name is "current user".
	if [[ $item != $current ]]; then
	#if not, then:
		#Set "current user" to name
		current=$item
		#generate unique 5 digit salt
		salt=$((10000 + RANDOM % 90000))
		#prepend salt
		replacement=$salt$item
		#get hash of above
		name=$(echo $replacement | sha256sum | cut -d' ' -f1)
		#prepend salt again
		replacement=$salt$name
	fi
	
	original_line=$(sed -n "${line_number}p" quiz_data.csv)
	rest=$(echo "$original_line" | cut -d',' -f2-)
	if [[ -n $rest ]]; then
		echo "$replacement,$rest" >> salted_data.csv
	else
		echo $replacement >> salted_data.csv
	fi
	echo "Current item: '$item'"
	echo "Line number: $line_number"
	echo "Original line: '$original_line'"
	echo "Rest: '$rest'"
	echo "Replacement: '$replacement'"
	
					
done
