#!/bin/bash

# Iterate over files in the directory
for f in ~/gallery-dl/redgifs/*; do
   # Check if the file is an image file
   if [[ -f "$f" && ( "$f" == *.jpg || "$f" == *.jpeg || "$f" == *.png || "$f" == *.gif  || "$f" == *.mp4 ) ]]; then
      convert "$f" -quality 70% "$f"
      echo "Downgraded $f"
   else
      echo "Skipped $f"
   fi
done
