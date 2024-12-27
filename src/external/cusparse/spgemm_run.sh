#!/bin/bash

# Read each line from matrix.txt
while IFS= read -r filename; do

    echo "Processing $filename"
    
    # Construct the path to the dataset
    dataset_path="./datasets/${filename}/${filename}.mtx"
    
    # Construct the output file path
    output_path="./outputs/${filename}.txt"
    
    # Execute the command and save the output
    ./spgemm -d 0 -check 0 "$dataset_path" "$dataset_path" > "$output_path"
done < matrix.txt