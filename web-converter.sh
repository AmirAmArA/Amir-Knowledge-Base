#!/bin/bash
#using imagemagick library to optimize images and convert them to webp format 
# Loop through each .png and .jpeg/.jpg file in the current directory
for file in *.{png,jpeg,jpg}; do
  # Check if the file exists (useful if no files match)
  [ -e "$file" ] || continue

  # Get the file name without the extension
  filename="${file%.*}"

  # Convert the file to .webp format with the same name
  convert-im6.q16 "$file" -quality 80 "$filename.webp"

  echo "Converted $file to $filename.webp"
done
