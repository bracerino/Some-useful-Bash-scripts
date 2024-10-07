#!/bin/bash

# Define the paths
source_directory="./Vaca_8"      # Folder where all files are located
destination_directory="./Selected_100_structures/Vaca_8"  # Folder where selected files will be copied
list_file="Vaca_8_selected_structure_names_PCA.txt"    # Text file containing list of filenames

# Create destination folder if it doesn't exist
mkdir -p "$destination_directory"

while IFS= read -r file_name; do
file_name=$(echo "$file_name" | tr -d '\r' | xargs)
    # Check if the file exists in the source directory
echo "FOLDER $source_directory"
	echo "Processing file: $file_name"
echo "$source_directory/$file_name"

        # Copy the file to the destination directory
     echo "$source_directory/$file_name"
        cp "$source_directory/$file_name" "$destination_directory"
        echo "Copied $file_name to $destination_directory"
done < "$list_file"
