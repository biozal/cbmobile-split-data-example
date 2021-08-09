#!/bin/bash
#define filename
filename="sampledata.json"
dbFileName='sampleDb.cblite2'

#get amount of records to get out of file and split into new files
length=`cat $filename | jq -r '.photos.photo | length'`

#loop through child array to get values out and save as seperate documents
for ((count=0;count<$length;count++))
do
	#get the index of the information
	itemIndex=".photos.photo[$count]"
	#get the field that we want to use the name the file
	idIndex=".id"
	#get the json
	json=$(cat $filename | jq $itemIndex)
	id=$(echo $json | jq $idIndex)
	./cblite put --create $dbFileName $id "$json"
done

./cblite ls -l --limit 10 $dbFileName
