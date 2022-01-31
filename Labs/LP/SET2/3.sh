#!/bin/bash

function calGrade() {
    if [[ $1 -lt 80 ]]; then
        echo "Grade: A"
    elif [[ $1 -lt 90 ]]; then
        echo "Grade: A+"
    else
        echo "Grade: O"
    fi
}

read -p "Enter number of subjects: " n
for ((i=1;i<=n;i++)); do
    read -p "Enter subject $i marks: " s
    calGrade s 
done