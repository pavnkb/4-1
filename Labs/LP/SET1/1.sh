#!/bin/bash
read -p "Enter a number: " n
sum=0
for ((i=1; i<=n; i++)); do
    sum=$((sum+i))
done
echo $sum