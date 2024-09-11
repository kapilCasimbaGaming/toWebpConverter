#!/bin/bash

# Check if a directory path is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 path_to_directory"
  exit 1
fi

# Assign the input directory path
INPUT_DIR="$1"

# Verify if the specified directory exists
if [ ! -d "$INPUT_DIR" ]; then
  echo "Error: Directory $INPUT_DIR does not exist."
  exit 1
fi

# Convert all .gif files in the specified directory and its subdirectories
find "$INPUT_DIR" -type f -iname '*.gif' | while read -r gif_file; do
  # Determine the output file name by replacing the .gif extension with .webp
  webp_file="${gif_file%.gif}.webp"

  # Convert the .gif to .webp using ffmpeg
  ffmpeg -i "$gif_file" -c:v libwebp -lossless 0 -q:v 50 -preset default -loop 0 "$webp_file"

  echo "Converted: $gif_file to $webp_file"
done

echo "Conversion complete!"
