#!/bin/bash
read -p "Enter base salary: " base
ta=$base/10
da=$base*15/100
hra=$base/5
gross=$((base+ta+da+hra))
echo "Gross Salary: $gross"