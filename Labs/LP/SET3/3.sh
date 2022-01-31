#!/bin/bash
read -p "Enter Name: " name
read -p "Enter Employee ID: " ID
read -p "Enter Designation: " designation

echo "Name: $name" >> details.txt
echo "Employee ID: $ID" >> details.txt
echo "Designation: $designation" >> details.txt