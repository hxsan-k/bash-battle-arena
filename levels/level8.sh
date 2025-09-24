# Script flow: 
# -> checks if a search term (word) is provided 
# -> checks if .log files actually exist 
# -> searches for search term inside .log files 
# -> lists .log file names containing the term

#!/usr/bin/env bash

read -p "What word would you like to search for? " word

if [ -z "$word" ]; then
  echo "No search term provided"
  exit 1
fi

shopt -s nullglob
log_files=( *.log )

if [ ${#log_files[@]} -eq 0 ]; then
  echo "No .log files exist"
  exit 1
fi

if grep -l "$word" "${log_files[@]}" > /dev/null; then
  echo "Match found"
else
  echo "No matches found"
  exit 1
fi

echo "file names with the matching term: $(grep -l "$word" "${log_files[@]}")"
exit 0
