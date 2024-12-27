#!/bin/bash

# Read each line from matrix.txt
while IFS= read -r filename; do

    echo "Processing $filename"
    
    # Construct the path to the dataset
    dataset_path="./datasets/${filename}/${filename}.mtx"
    
    # Construct the output file path
    output_path="./outputs_aat/${filename}.txt"
    
    # Execute the command and save the output
    ./test -d 0 -aat 1 "$dataset_path" > "$output_path"
done < matrix.txt