#!/bin/bash
function isPrime() {
    cnt=0
    for ((i=1;i<=$1;i++)); do
        if [[ $(($1 % $i)) -eq 0 ]]; then
            cnt=$((cnt+1))
        fi
    done
    if [[ cnt -eq 2 ]]; then
        echo -n "$1 "
    fi
}

echo -n "Primes: 2 "
for ((i=1;i<=100;i++)); do
    isPrime $i
done