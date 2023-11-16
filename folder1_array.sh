#!/bin/bash

# Specify the directory where you want to create the folders
parent_directory="/home/subham/gem5_project/in_order"

# Define arrays for four parameters
param1=("l1d_size=128" "l1d_size=256" "l1d_size=512")
param2=("l1i_size=128" "l1i_size=256" "l1i_size=512")
param3=("l1d_assoc=2" "l1d_assoc=4" "l1d_assoc=8" "l1d_assoc=16")
param4=("l1i_assoc=2" "l1i_assoc=4" "l1i_assoc=8" "l1i_assoc=16")

# Create folders for all combinations of the four parameters using nested loops
for val1 in "${param1[@]}"
do
  for val2 in "${param2[@]}"
  do
    for val3 in "${param3[@]}"
    do
      for val4 in "${param4[@]}"
      do
        folder_name="${val1}_${val2}_${val3}_${val4}"
        folder_path="$parent_directory/$folder_name"
        
        # Check if the folder already exists
        if [ ! -d "$folder_path" ]; then
          mkdir "$folder_path"
          echo "Created folder: $folder_path"
        else
          echo "Folder already exists: $folder_path"
        fi
      done
    done
  done
done


