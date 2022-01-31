#!/bin/bash

read -p "Enter number 1: " a
read -p "Enter number 2: " b
read -p "Enter the operation: " op

case $op in
"add")
res=$((a+b));;
"sub")
res=$((a-b));;
"mul")
res=$((a*b));;
"div")
res=$((a/b));;
*)
echo "Invalid operation"
esac
echo "result: $res"