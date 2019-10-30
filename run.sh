#!/bin/bash


if [ -z $1 ]; then
	./a.out
	exit 0
fi

case $1 in
	"-h" | "--help")
		perl -E 'say "\033[36m"'
		echo "-h | --help"
		echo "	get help message"
		echo "-c <file>"
		echo "	compile & run C program"
		echo "-c++ or cpp <file>"
		echo "	compile & run C++ program"
	;;
	"c")
		if [ -z $2 ]; then
			perl -E 'say "\033[31m"'
			echo "usage: no filename"
			echo "use -h or --help to get help"
		else
			if [ -z $3]; then
				gcc -Wall -Werror -Wextra $2
				./a.out
			else
				gcc -Wall -Werror -Wextra $2 -o $3
				./$3
			fi
		fi
	;;
	"cpp" | "c++")
		if [ -z $2 ]; then
			perl -E 'say "\033[31m"'
			echo "usage: no filename"
			echo "use -h or --help to get help"
		else
			if [ -z $3]; then
				g++ -Wall -Werror -Wextra $2
				./a.out
			else
				g++ -Wall -Werror -Wextra $2 -o $3
				./$3
			fi
		fi
	;;
	*)
		perl -E 'say "\033[31m"'
		echo "usage: unknown parameter"
		echo "use -h or --help to get help"
	;;
esac
perl -E 'say "\033[31m"'

exit 0
