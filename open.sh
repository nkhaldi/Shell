#!/bin/bash

if [ -z $1 ]; then
	nautilus ./ &
	exit 0
fi

case $1 in
	"-h" | "--help")
		perl -E 'say "\033[36m"'
		echo "-h | --help"
		echo "	get help message"
		echo "-d | --dir"
		echo "	open directory"
		echo "-p | --pdf"
		echo "	open pdf file"
	;;
	"-d" | "--dir")
		if [ -z $2 ]; then
			nautilus ./ &
		else
			nautilus $2 &
		fi
	;;
	"-p" | "--pdf")
		if [ -z $2 ]; then
			perl -E 'say "\033[31m"'
			echo "usage: no file"
		else
			evince $2 &	
		fi
	;;
	*)
		perl -E 'say "\033[31m"'
		echo "usage: unknown parameter"
		echo "use -h or --help to get help"
	;;
esac

perl -E 'say "\033[0m"'
exit 0
