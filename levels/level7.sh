# This script checks if .txt files exist, and if not, a message is dispalyed. 
#If .txt files exist, it arranges them from smallest to largest size and shows user the sorted list.

# Use /bin/env bash from now on to find bash in the environment (more portable than /bin/bash)
#!/usr/bin/env bash 

shopt -s nullglob   # expands *.txt to nothing if no matches
txt_files=(*.txt)

if [ ${#txt_files[@]} -eq 0 ]; then
  echo "No text files found"
  exit 1
fi

echo "Here is a list of text files, arranged from smallest to largest"
ls -lhSr "${txt_files[@]}"

exit 0
