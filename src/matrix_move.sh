#!/bin/bash

# Create the destination directory if it doesn't exist
mkdir -p ../datasets

# Loop through all .tar.gz files in the parent directory
for file in ../*.tar.gz; 
do
    # Extract the base name of the file (without the .tar.gz extension)
    base_name=$(basename "$file" .tar.gz)
    
    # Extract the .tar.gz file into the datasets folder
    tar -xzf "$file" -C ../datasets
    
    # Move the corresponding directory to the datasets folder
    mv "../$base_name" ../datasets/
done