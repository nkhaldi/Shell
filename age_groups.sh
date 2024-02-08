#!/bin/bash

# Напишите скрипт на bash, который будет определять,
# в какую возрастную группу попадают пользователи.
# При запуске скрипт должен вывести сообщение "Enter your name:" и cчитать имя.
# Далее нужно вывести "Enter your age:" и считать возраст

# Когда возраст введен, скрипт выводит сообщение в формате
# "<Имя>, your group is <группа>",
# где <группа> определяется на основе возраста по следующим правилам:
# - младше либо равно 16: "child",
# - от 17 до 25 (включительно): "youth",
# - старше 25: "adult".

# Цикл повторяется до тех пор, пока  не будет введено пустое имя или возраст 0.
# Тогда скрипт должен вывести на экран "bye" и закончить свою работу.

while true
do
    echo "Enter your name:"
    read name
    [ -z $name ] && break

    echo "Enter your age:";
    read age
    [ $age -eq 0 ] && break

    if (( $age < 16 )); then
        group=child
    elif (( $age > 30 )); then
        group=adult
    else
        group=youth
    fi

    echo "$name, your group is $group"
done

echo bye
exit 0
