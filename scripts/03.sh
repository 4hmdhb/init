#! /bin/bash

LINE=1
while read -r CUR_LINE
do
	echo "$LINE: $CUR_LINE" >> output.txt
	((LINE++))
done < "./test.txt"
