#!/bin/bash

input_file="/home/niujh/TileSpGEMM/data/mem-cost_aat.csv"
temp_file="/home/niujh/TileSpGEMM/data/temp.csv"

# Extract the first column, remove directory prefix and suffix, replace .mtx with .txt, and keep other columns unchanged
awk -F, 'BEGIN {OFS=","} {gsub(".*/|\\.mtx", "", $1); $1=$1".txt"; print}' "$input_file" > "$temp_file"

# Replace the original file with the modified content
mv "$temp_file" "$input_file"

# Replace the original file with the modified content
# mv "$temp_file" "$input_file"