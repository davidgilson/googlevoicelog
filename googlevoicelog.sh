#!/bin/sh

file="call-log.csv"

echo -e "Date\tTime(GMT)\tNumber\tType\tDuration" > $file

for f in *.html
do
	tail -n 1 $file
	d=$(grep "published" -- "$f" | awk -v FS="(>|<)" '{print $3}' | sed 's/,/\ /g')
	ddate=$(date -d "$d" +"%Y-%m-%d")
	dtime=$(date -d "$d" +"%R")
	n=$(grep "tel" -- "$f" | awk -v FS="(>|<)" '{print $5}')
	t=$(grep "\"fn\"" -- "$f" | awk -F ">" '{print $NF}' | awk -F " " '{print $1}')
	l=$(grep "duration" -- "$f" | awk -F '[()]' '{print $2}')
	echo -e $ddate"\t"$dtime"\t"$n"\t"$t"\t"$l >> $file
done
