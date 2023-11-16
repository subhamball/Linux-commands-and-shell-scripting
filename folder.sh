#!/bin/bash

# Specify the directory where you want to create the folders
parent_directory="path/to/parent/directory"

# Define four parameters for folder names
param1="name"
param2="type"
param3="date"
param4="location"

# Create 100 folders with names based on the four parameters
for i in {1..100}
do
  folder_name="${param1}_${i}_${param2}_${param3}_${param4}"
  folder_path="$parent_directory/$folder_name"
  
  # Check if the folder already exists
  if [ ! -d "$folder_path" ]; then
    mkdir "$folder_path"
    echo "Created folder: $folder_path"
  else
    echo "Folder already exists: $folder_path"
  fi
done

