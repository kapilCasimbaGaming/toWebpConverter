#!/bin/bash

# Directory to convert
DIRECTORY=$1

# Check if directory is provided
if [ -z "$DIRECTORY" ]; then
  echo "Please provide a directory containing PNG files."
  exit 1
fi

# Convert each JPG or PNG file to WebP
find "$DIRECTORY" -type f \( -iname '*.png' \) | while read -r file; do
  output="${file%.*}.jpg"
  cwebp -q 80 "$file" -o "$output"
  echo "Converted $file to $output"
done
