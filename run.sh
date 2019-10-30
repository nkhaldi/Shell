#!/bin/bash


if [ -z $1 ]; then
	./a.out
	exit 0
fi
case $1 in
	"c")
		if [ -z $2 ]; then
			echo "usage: compiler is not selected"
			echo "use -h or --help to get help"
		else
			if [ -z $3 ]; then
				perl -E 'say "\033[31m"'
				echo "usage: no filename"
				echo "use -h or --help to get help"
			else
				gcc -Wall -Werror -Wextra $3 -o main
				./main
			fi
		fi
	;;
	"cpp")
		if [ -z $2 ]; then
			echo "usage: compiler is not selected"
			echo "use -h or --help to get help"
		else
			if [ -z $3 ]; then
				perl -e 'say "\033[31m"'
				echo "usage: no filename"
				echo "use -h or --help to get help"
			else
				gcc -Wall -Werror -Wextra $3 -o main
				./main
			fi
		fi
	;;
esac
perl -E 'say "\033[31m"'

exit 0
