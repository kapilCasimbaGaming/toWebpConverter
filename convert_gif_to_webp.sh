#!/bin/bash

# Check if a directory is provided
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/directory"
  exit 1
fi

DIRECTORY=$1

# Find and convert all GIF files in the directory and subdirectories
find "$DIRECTORY" -type f -iname '*.gif' | while read -r gif_file; do
  # Construct the output WebM filename
  webm_file="${gif_file%.*}.webm"
  
  # Convert GIF to WebM using libvpx-vp9
  ffmpeg -i "$gif_file" -c:v libvpx-vp9 -pix_fmt yuva420p -b:v 1M "$webm_file"
  
  echo "Converted $gif_file to $webm_file"
done
