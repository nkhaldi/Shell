#!/bin/bash

# Напишите скрипт на bash, который будет искать наибольший общий делитель
# (НОД, greatest common divisor, GCD) двух чисел.
# При запуске скрипт ждет ввода двух натуральных чисел через пробел.
# и выводит на экран сообщение "GCD is <посчитанное значение>".

gcd ()
{
    let "mod = $1 % $2"

    if [[ $mod -eq 0 ]]; then return $2; fi

    return $(gcd $2 $mod)
}

while true
do
    read a b
    if [[ -z $a ]]; then break; fi

    gcd $a $b
    echo "GCD is $?"
done

exit 0
