#! /bin/bash

# Скрипт для рефакторинго кода при помощи линтеров isort, black и flake8

if [ -z $1 ]; then
    dir='.'
else
    dir=$1
fi

echo "\033[1;34mUsing isort:\033[0m"
isort $dir
echo ""

echo "\033[1;34mUsing black:\033[0m"
black $dir
echo ""

echo "\033[1;34mUsing flake8:\033[0m"
flake8 $dir
echo ""

echo "\033[1;32mDone.\033[0m"
