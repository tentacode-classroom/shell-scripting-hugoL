#!/bin/bash

CURRENT_DIRECTORY=`dirname $0`
FIXTURES_DIRECTORY=$CURRENT_DIRECTORY/fixtures
BAZAR_DIRECTORY=$FIXTURES_DIRECTORY/bazar
CLEAN_DIRECTORY=$FIXTURES_DIRECTORY/bazar_clean

if [ ! -d $FIXTURES_DIRECTORY ]
then
	echo "Je lance le script pour créer mes fixtures"
	sh ./init-fixture.sh 2> /dev/null
fi

	FILES=`find $BAZAR_DIRECTORY -type f`

	for FILE in $FILES
	do
		if file $FILE | grep 'HTML' > /dev/null
		then
			cp $FILE $CLEAN_DIRECTORY/html
		elif file $FILE | grep 'image' > /dev/null
		then
			cp $FILE $CLEAN_DIRECTORY/images
		else
			cp $FILE $CLEAN_DIRECTORY/divers
		fi
	done

	du -a $CLEAN_DIRECTORY
