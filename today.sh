#!/bin/bash
if [ $# -eq 0 ]
	then
		echo "No arguments supplied."
		echo "Please supply a zip code. i.e. today 11111"
		exit 1
fi
MONTH=$(date '+%B')
DAY=$(date '+%d')
DAYM=""
URL="http://api.openweathermap.org/data/2.5/weather?zip=$1,us"
JSON=$(curl -s $URL)
CITY=$(curl -s $URL | jq --raw-output '.name')
WEATHER=$(curl -s $URL | jq --raw-output '.weather | .[] | .main')
case $DAY in
	01)
		DAYM="1st"
		;;
	02)
		DAYM="2nd"
		;;
	03)
		DAYM="3rd"		
		;;
	04)
		DAYM="4th"
		;;
	05)
		DAYM="5th"
		;;
	06)
		DAYM="6th"
		;;
	07)
		DAYM="7th"
		;;
	08)
		DAYM="8th"
		;;
	09)
		DAYM="9th"
		;;
	10)
		DAYM="10th"
		;;
	11)
		DAYM="11th"
		;;
	12)
		DAYM="12th"
		;;
	13)
		DAYM="13th"
		;;
	14)
		DAYM="14th"
		;;
	15)
		DAYM="15th"
		;;
	16)
		DAYM="16th"
		;;
	17)
		DAYM="17th"
		;;
	18)
		DAYM="18th"
		;;
	19)
		DAYM="19th"
		;;
	20)
		DAYM="20th"
		;;
	21)
		DAYM="21st"
		;;
	22)
		DAYM="22nd"
		;;
	23)
		DAYM="23rd"
		;;
	24)
		DAYM="24th"
		;;
	25)
		DAYM="25th"
		;;
	26)
		DAYM="26th"
		;;
	28)
		DAYM="28th"
		;;
	29)
		DAYM="29th"
		;;	
	30)
		DAYM="30th"
		;;
	31)
		DAYM="31st"
		;;
esac

echo "Today is $MONTH the $DAYM, in the city of $CITY. The weather is $WEATHER."
