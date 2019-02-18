#!/bin/sh

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")


echo "checking if this script has to made great again..."

if [ $LOCAL = $REMOTE ]; then
	    echo "your script is the best of all scripts"
elif [ $LOCAL = $BASE ]; then
	read -p "we can make it great again; may we? (y/n)" pullNewVersion
	if [$pullNewVersion = "y" ||$pullNewVersion = "Y"]
		then
			git pull -u origín/master
	fi	

elif [ $REMOTE = $BASE ]; then
	read -p "You have made a few changes... do you want to share them? :)" pushNewVersion
	if [$pushNewVersion = "y" ||$pushNewVersion = "Y"]
		then
			git push -u origín/master
	fi	
else
	echo "you have left our Path of development; Will you future Path may hold no Errors"
fi

./installVim.sh
./installTmux.sh
