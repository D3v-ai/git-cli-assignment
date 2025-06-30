#!/bin/bash

# This script calculates simple interest.

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Simple Interest = (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "Simple Interest: $interest"
}

# Main part of the script
echo "--- Simple Interest Calculator ---"

# Get user input
read -p "Enter Principal Amount (P): " p_amount
read -p "Enter Rate of Interest (R): " r_rate
read -p "Enter Time in Years (T): " t_years

# Call the function
calculate_simple_interest $p_amount $r_rate $t_years

echo "----------------------------------"
