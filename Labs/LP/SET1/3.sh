#!/bin/bash
read -p "Enter a number: " n
if  [[ $n == 1 ]]; then
    echo "one"
elif [[ $n == 2 ]]; then
    echo "two"
elif [[ $n == 3 ]]; then
    echo "three"
elif [[ $n == 4 ]]; then
    echo "four"
elif [[ $n == 5 ]]; then
    echo "five"
elif [[ $n == 6 ]]; then
    echo "six"
elif [[ $n == 7 ]]; then
    echo "seven"
elif [[ $n == 8 ]]; then
    echo "eight"
elif [[ $n == 9 ]]; then
    echo "nine"
elif [[ $n == 0 ]]; then
    echo "zero"
fi