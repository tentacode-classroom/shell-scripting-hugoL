#!/bin/bash


if [ ! -d ./fixtures ]
then
	echo "Je lance le script pour créer mes fixtures"
	sh ./init-fixture.sh
fi
