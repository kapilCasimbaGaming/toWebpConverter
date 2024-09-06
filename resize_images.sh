#!/bin/bash

# Check if at least three arguments are provided
if [ $# -lt 3 ]; then
  echo "Usage: $0 /path/to/directory filename_pattern width1 [width2 ... widthN]"
  exit 1
fi

DIRECTORY=$1
FILENAME_PATTERN=$2
shift 2
WIDTHS=("$@")

# Check if each specified width is a valid number
for WIDTH in "${WIDTHS[@]}"; do
  if ! [[ "$WIDTH" =~ ^[0-9]+$ ]]; then
    echo "Width must be a positive integer. Invalid width: $WIDTH"
    exit 1
  fi
done

# Resize matching images
find "$DIRECTORY" -type f -iname "$FILENAME_PATTERN" | while read -r file; do
  # Check if the file is an image by its extension
  if [[ "$file" =~ \.(jpg|jpeg|png|webp)$ ]]; then
    # Get the file extension
    ext="${file##*.}"
    
    # Resize the image for each specified width
    for WIDTH in "${WIDTHS[@]}"; do
      # Generate the output filename
      output="${file%.*}_${WIDTH}w.$ext"
      
      # Resize the image
      convert "$file" -resize "${WIDTH}"x "$output"
      
      echo "Resized $file to $output with width $WIDTH"
    done
  else
    echo "Skipping non-image file $file"
  fi
done
