#!/bin/bash
#$Revision:001$
#$Wed Jun 11 19:40:55 UTC 2025$

#Variables
BASE=/home/anuprash/myscripts/find_command
DAYS=10
DEPTH=1
RUN=0

#Check if the directory is present or not
if [[ ! -d $BASE ]]
then
	echo "directory does not exist: $BASE"
	exit 1
fi

#Create 'archieve' foler if not present
if [[ ! -d $BASE/archieve ]]
then 
	mkdir $BASE/archive
fi

#Find the list of files larger than 1MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +1M`
do
	if [[ $RUN -eq 0 ]]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done
