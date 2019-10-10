#!/bin/bash

if [ -z $1 ]; then
	perl -E 'say "\033[31m"'
	echo "usage: empty parameter"
	echo "use -h or --help to get help"
	exit 0
fi

case $1 in
	"-h" | "--help")
		perl -E 'say "\033[36m"'
		echo "-h or --help:"
		echo "	help message"
		echo "-s or --status:"
		echo "	get repository status"
		echo "-p or --pull:"
		echo "	gull last commits"
		echo "-c or --commit:"
		echo "	ultimate commit"
	;;
	"-s" | "--status")
		perl -E 'say "\033[36m"'
		git status
	;;
	"-p" | "--pull")
		git pull
	;;
	"-c" | "--commit")
		if [ -z $2 ]; then
			git add --all
			echo "lol"
		else
			git add $2
			echo "olo"
		fi

		if [ -z $3 ]; then
			git commit -m "default commit messege"
		else
			git commit -m "$3"
		fi
		git push
		perl -E 'say "\033[32m"'
		git status
	;;
esac
echo ""
