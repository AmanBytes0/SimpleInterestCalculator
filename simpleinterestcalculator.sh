#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Taking input
read -p "Enter Principal amount: " P
read -p "Enter Rate of Interest (%): " R
read -p "Enter Time (in years): " T

# Calculation
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)

# Output
echo "--------------------------------------"
echo "Simple Interest = $SI"
echo "Total Amount = $(echo "$P + $SI" | bc)"
echo "--------------------------------------"
