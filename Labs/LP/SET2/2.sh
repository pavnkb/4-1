#!/bin/bash
read -p "Enter number 1: " a
read -p "Enter number 2: " b
b=$((a+b))
a=$((b-a))
b=$((b-a))
echo "Value of number 1: $a"
echo "Value of number 1: $b"